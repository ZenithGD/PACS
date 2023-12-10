////////////////////////////////////////////////////////////////////
// File: basic_environ.c
//
// Description: base file for environment exercises with openCL
//
//
////////////////////////////////////////////////////////////////////
#define cimg_use_jpeg
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <iostream>
#include <math.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#ifdef __APPLE__
#include <OpenCL/opencl.h>
#else
#include <CL/cl.h>
#endif
#include "CImg.h"

using namespace cimg_library;
using namespace std;
// check error, in such a case, it exits

void cl_error(cl_int code, const char *string)
{
  if (code != CL_SUCCESS)
  {
    printf("%d - %s\n", code, string);
    exit(-1);
  }
}
////////////////////////////////////////////////////////////////////////////////

int main(int argc, char **argv)
{
  if (argc < 3)
  {
    std::cout << "Usage: rot <image_path> <degrees>" << std::endl;
    exit(1);
  }

  int err;                // error code returned from api calls
  size_t t_buf = 50;      // size of str_buffer
  char str_buffer[t_buf]; // auxiliary buffer
  size_t e_buf;           // effective size of str_buffer in use

  // global domain size for our calculation
  size_t local_size; // local domain size for our calculation

  const cl_uint num_platforms_ids = 10;                         // max of allocatable platforms
  cl_platform_id platforms_ids[num_platforms_ids];              // array of platforms
  cl_uint n_platforms;                                          // effective number of platforms in use
  const cl_uint num_devices_ids = 10;                           // max of allocatable devices
  cl_device_id devices_ids[num_platforms_ids][num_devices_ids]; // array of devices
  cl_uint n_devices[num_platforms_ids];                         // effective number of devices in use for each platform

  cl_device_id device_id;         // compute device id
  cl_context context;             // compute context
  cl_command_queue command_queue; // compute command queue

  // 1. Scan the available platforms:
  err = clGetPlatformIDs(num_platforms_ids, platforms_ids, &n_platforms);
  cl_error(err, "Error: Failed to Scan for Platforms IDs");
  printf("Number of available platforms: %d\n\n", n_platforms);

  // ***Task***: print on the screen the name, host_timer_resolution, vendor, versionm, ...

  // 2. Scan for devices in each platform
  for (int i = 0; i < n_platforms; i++)
  {
    err = clGetDeviceIDs(platforms_ids[i], CL_DEVICE_TYPE_ALL, num_devices_ids, devices_ids[i], &(n_devices[i]));
    cl_error(err, "Error: Failed to Scan for Devices IDs");
    printf("\t[%d]-Platform. Number of available devices: %d\n", i, n_devices[i]);
  }

  // 3. Create a context, with a device
  cl_context_properties properties[] = {CL_CONTEXT_PLATFORM, (cl_context_properties)platforms_ids[0], 0};
  context = clCreateContext(properties, 1, devices_ids[0], NULL, NULL, &err);
  cl_error(err, "Failed to create a compute context\n");

  // 4. Create a command queue
  cl_command_queue_properties proprt[] = {CL_QUEUE_PROPERTIES, CL_QUEUE_PROFILING_ENABLE, 0};
  command_queue = clCreateCommandQueueWithProperties(context, devices_ids[0][0], proprt, &err);
  cl_error(err, "Failed to create a command queue\n");

  // Calculate size of the file
  FILE *fileHandler = fopen("image-rot/rot_kernel.cl", "r");
  fseek(fileHandler, 0, SEEK_END);
  size_t fileSize = ftell(fileHandler);
  rewind(fileHandler);
  // read kernel source into buffer
  char *sourceCode = (char *)malloc(fileSize + 1);
  sourceCode[fileSize] = '\0';
  fread(sourceCode, sizeof(char), fileSize, fileHandler);
  fclose(fileHandler);

  const char *src_arr[1] = {sourceCode};

  const size_t lengths[1] = {strlen(sourceCode)};

  // create program from buffer
  cl_program program = clCreateProgramWithSource(context, 1, src_arr, lengths, &err);
  cl_error(err, "Failed to create program with source\n");
  free(sourceCode);

  // Build the executable and check errors
  err = clBuildProgram(program, 0, NULL, NULL, NULL, NULL);
  char buffer[2048];
  if (err != CL_SUCCESS)
  {
    size_t len;

    printf("Error: Some error at building process.\n");
    clGetProgramBuildInfo(program, devices_ids[0][0], CL_PROGRAM_BUILD_LOG, sizeof(buffer), &buffer, NULL);
    printf("%s\n", buffer);
    exit(-1);
  }
  printf("SUCCESS\n");
  clGetProgramBuildInfo(program, devices_ids[0][0], CL_PROGRAM_BUILD_LOG, sizeof(buffer), &buffer, NULL);
  printf("%s\n", buffer);

  cl_kernel kernel = clCreateKernel(program, "rot", &err);
  cl_error(err, "Failed to create kernel from the program\n");

  CImg<unsigned char> img(argv[1]); // Load image file "image.jpg" at object img

  size_t width = img.width();
  size_t height = img.height();

  bool display = true;
  if (display)
  {

    CImgDisplay window(img, "Image");

    while (!window.is_closed())
    {
      // Wait for window events
      window.wait();
    }
  }

  unsigned char *image_ptr = img.data(); // YA tenemos el puntero a la Image

  float degrees = std::stof(argv[2]);
  float angle = degrees * (M_PI / 180);
  int x0 = height / 2;
  int y0 = width / 2;

  // Create OpenCL buffer visible to the OpenCl runtime
  cl_mem in_device_object = clCreateBuffer(context, CL_MEM_READ_ONLY, sizeof(unsigned char) * height * width * 3, NULL, &err);
  cl_error(err, "Failed to create in memory buffer at device\n");
  cl_mem out_device_object = clCreateBuffer(context, CL_MEM_WRITE_ONLY, sizeof(unsigned char) * height * width * 3, NULL, &err);
  cl_error(err, "Failed to create out memory buffer at device\n");

  // Write date into the memory object
  err = clEnqueueWriteBuffer(command_queue, in_device_object, CL_TRUE, 0, sizeof(unsigned char) * height * width * 3,
                             image_ptr, 0, NULL, NULL);
  cl_error(err, "Failed to enqueue a write command\n");

  err = clSetKernelArg(kernel, 0, sizeof(cl_mem), &in_device_object);
  cl_error(err, "Failed to set argument 0\n");
  err = clSetKernelArg(kernel, 1, sizeof(cl_mem), &out_device_object);
  cl_error(err, "Failed to set argument 1\n");
  err = clSetKernelArg(kernel, 2, sizeof(unsigned int), &width);
  cl_error(err, "Failed to set argument 2\n");
  err = clSetKernelArg(kernel, 3, sizeof(unsigned int), &height);
  cl_error(err, "Failed to set argument 3\n");
  err = clSetKernelArg(kernel, 4, sizeof(float), &angle);
  cl_error(err, "Failed to set argument 4\n");
  err = clSetKernelArg(kernel, 5, sizeof(int), &x0);
  cl_error(err, "Failed to set argument 5\n");
  err = clSetKernelArg(kernel, 6, sizeof(int), &y0);
  cl_error(err, "Failed to set argument 6\n");

  // Launch Kernel
  
  size_t global_size[3] = {height, width, 3};
  err = clEnqueueNDRangeKernel(command_queue, kernel, 3, NULL, global_size, NULL, 0, NULL, NULL);
  cl_error(err, "Failed to launch kernel to the device\n");

  unsigned char *img_out = new unsigned char[sizeof(unsigned char) * height * width * 3];
  // Read data form device memory back to host memory

  clFinish(command_queue);

  err = clEnqueueReadBuffer(command_queue, out_device_object, CL_TRUE, 0, sizeof(unsigned char) * height * width * 3, img_out, 0, NULL, NULL);
  cl_error(err, "Failed to enqueue a read command\n");

  for (int i = 0; i < width * height * 3; ++i)
  {
    image_ptr[i] = static_cast<unsigned char>(img_out[i]);
  }

  if (display)
  {

    CImgDisplay window(img, "Image");

    while (!window.is_closed())
    {
      window.wait();
    }
  }

  clReleaseMemObject(in_device_object);
  clReleaseMemObject(out_device_object);
  clReleaseProgram(program);
  clReleaseKernel(kernel);
  clReleaseCommandQueue(command_queue);
  clReleaseContext(context);
  return 0;
}
