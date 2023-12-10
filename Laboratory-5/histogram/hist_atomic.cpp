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
#include <math.h>
#include <iostream>
#include <iomanip>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#ifdef __APPLE__
#include <OpenCL/opencl.h>
#else
#include <CL/cl.h>
#endif
#include "CImg.h"

#include <chrono>
#include "measurement_info.hpp"
#include "plot_hist.hpp"

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

measurement_info run_experiment(char *input, char *output, bool store)
{

  auto prog_ini = std::chrono::steady_clock().now();

  int err;                            	// error code returned from api calls
  size_t t_buf = 50;			// size of str_buffer
  char str_buffer[t_buf];		// auxiliary buffer	
  size_t e_buf;				// effective size of str_buffer in use
	    
                     	// global domain size for our calculation
  size_t local_size;                       	// local domain size for our calculation

  const cl_uint num_platforms_ids = 10;				// max of allocatable platforms
  cl_platform_id platforms_ids[num_platforms_ids];		// array of platforms
  cl_uint n_platforms;						// effective number of platforms in use
  const cl_uint num_devices_ids = 10;				// max of allocatable devices
  cl_device_id devices_ids[num_platforms_ids][num_devices_ids];	// array of devices
  cl_uint n_devices[num_platforms_ids];				// effective number of devices in use for each platform
	
  cl_device_id device_id;             				// compute device id 
  cl_context context;                 				// compute context
  cl_command_queue command_queue;     				// compute command queue
    

  // 1. Scan the available platforms:
  err = clGetPlatformIDs (num_platforms_ids, platforms_ids, &n_platforms);
  cl_error(err, "Error: Failed to Scan for Platforms IDs");
  printf("Number of available platforms: %d\n\n", n_platforms);

  // ***Task***: print on the screen the name, host_timer_resolution, vendor, versionm, ...
	
  //2. Scan for devices in each platform
  for (int i = 0; i < n_platforms; i++ ){
    err = clGetDeviceIDs( platforms_ids[i], CL_DEVICE_TYPE_ALL ,num_devices_ids, devices_ids[i], &(n_devices[i]));
    cl_error(err, "Error: Failed to Scan for Devices IDs");
    printf("\t[%d]-Platform. Number of available devices: %d\n", i, n_devices[i]);
  }	

  // 3. Create a context, with a device
  cl_context_properties properties[] = { CL_CONTEXT_PLATFORM, (cl_context_properties)platforms_ids[0], 0};
  context = clCreateContext(properties, 1, devices_ids[0] ,NULL, NULL, &err);
  cl_error(err, "Failed to create a compute context\n");

  // 4. Create a command queue
  cl_command_queue_properties proprt[] = { CL_QUEUE_PROPERTIES, CL_QUEUE_PROFILING_ENABLE, 0 };
  command_queue = clCreateCommandQueueWithProperties( context, devices_ids[0][0], proprt, &err);
  cl_error(err, "Failed to create a command queue\n");

  // Calculate size of the file
  FILE *fileHandler = fopen("histogram/hist_atomic.cl", "r");
  fseek(fileHandler, 0, SEEK_END);
  size_t fileSize = ftell(fileHandler);
  rewind(fileHandler);
  // read kernel source into buffer
  char * sourceCode = (char*) malloc(fileSize + 1);
  sourceCode[fileSize] = '\0';
  fread(sourceCode, sizeof(char), fileSize, fileHandler);
  fclose(fileHandler);

  const char* src_arr[1] = {sourceCode};

  const size_t lengths[1] = {strlen(sourceCode)};

  
  // create program from buffer
  cl_program program = clCreateProgramWithSource(context,1, src_arr, lengths, &err);
  cl_error(err, "Failed to create program with source\n");
  free(sourceCode);

  // Build the executable and check errors
  err = clBuildProgram(program, 0, NULL, NULL, NULL, NULL);
  char buffer[2048];
  if (err != CL_SUCCESS){
    size_t len;
    
    printf("Error: Some error at building process.\n");
    clGetProgramBuildInfo(program, devices_ids[0][0], CL_PROGRAM_BUILD_LOG, sizeof(buffer), &buffer, NULL);
    printf("%s\n", buffer);
    exit(-1);
  }
  printf("SUCCESS\n");
  clGetProgramBuildInfo(program, devices_ids[0][0], CL_PROGRAM_BUILD_LOG, sizeof(buffer), &buffer, NULL);
  printf("%s\n", buffer);

  cl_kernel kernel = clCreateKernel(program, "hist_atomic", &err);
  cl_error(err, "Failed to create kernel from the program\n");

  //CREAR LAS VARIABLES QUE USARA EL KERNEL
  CImg<unsigned char> img(input);  // Load image file "image.jpg" at object img

  size_t width = img.width();
  size_t height = img.height();

  unsigned char* ptrImagen = img.data();

  int r[256] = {0};
  int g[256] = {0};
  int b[256] = {0};

  // Create OpenCL buffer visible to the OpenCl runtime
  cl_mem in_device_object  = clCreateBuffer(context, CL_MEM_READ_ONLY, sizeof(unsigned char) * height * width * 3, NULL, &err);
  cl_error(err, "Failed to create in memory buffer at device\n");
  cl_mem r_in_out = clCreateBuffer(context, CL_MEM_READ_WRITE, sizeof(int) * 256, NULL, &err);
  cl_error(err, "Failed to create r out memory buffer at device\n");
  cl_mem g_in_out = clCreateBuffer(context, CL_MEM_READ_WRITE, sizeof(int) * 256, NULL, &err);
  cl_error(err, "Failed to create g out memory buffer at device\n");
  cl_mem b_in_out = clCreateBuffer(context, CL_MEM_READ_WRITE, sizeof(int) * 256, NULL, &err);
  cl_error(err, "Failed to create b out memory buffer at device\n");


   // Write date into the memory object 
  err = clEnqueueWriteBuffer(command_queue, in_device_object, CL_TRUE, 0, sizeof(unsigned char) * height * width * 3, 
                            ptrImagen, 0, NULL, NULL);
  err = clEnqueueWriteBuffer(command_queue, r_in_out, CL_TRUE, 0, sizeof(int) * 256, 
                            r, 0, NULL, NULL);
  err = clEnqueueWriteBuffer(command_queue, g_in_out, CL_TRUE, 0, sizeof(int) * 256, 
                            g, 0, NULL, NULL);
  err = clEnqueueWriteBuffer(command_queue, b_in_out, CL_TRUE, 0, sizeof(int) * 256, 
                            b, 0, NULL, NULL);                                                   
  cl_error(err, "Failed to enqueue a write command\n");


  err = clSetKernelArg(kernel, 0, sizeof(cl_mem), &in_device_object);
  cl_error(err, "Failed to set argument 0\n");
  err = clSetKernelArg(kernel, 1, sizeof(cl_mem), &r_in_out);
  cl_error(err, "Failed to set argument 1\n");
  err = clSetKernelArg(kernel, 2, sizeof(cl_mem), &g_in_out);
  cl_error(err, "Failed to set argument 2\n");
  err = clSetKernelArg(kernel, 3, sizeof(cl_mem), &b_in_out);
  cl_error(err, "Failed to set argument 3\n");
  err = clSetKernelArg(kernel, 4, sizeof(unsigned int), &width);
  cl_error(err, "Failed to set argument 4\n");
  err = clSetKernelArg(kernel, 5, sizeof(unsigned int), &height);
  cl_error(err, "Failed to set argument 5\n");


  // Launch Kernel
  cl_event event;
  size_t global_size[3] = {height, width, 3};  
  err = clEnqueueNDRangeKernel(command_queue, kernel, 3, NULL, global_size, NULL, 0, NULL, &event);
  cl_error(err, "Failed to launch kernel to the device\n");

  err = clEnqueueReadBuffer(command_queue, r_in_out, CL_TRUE, 0, sizeof(int) * 256, r, 0, NULL, NULL);
  cl_error(err, "Failed to enqueue  R a read command\n");
  err = clEnqueueReadBuffer(command_queue, g_in_out, CL_TRUE, 0, sizeof(int) * 256, g, 0, NULL, NULL);
  cl_error(err, "Failed to enqueue G a read command\n");
  err = clEnqueueReadBuffer(command_queue, b_in_out, CL_TRUE, 0, sizeof(int) * 256, b, 0, NULL, NULL);
  cl_error(err, "Failed to enqueue B a read command\n");

  if ( store ) {
    int rmax = 0;
    int gmax = 0;
    int bmax = 0;
    float rh[256] = {0};
    float gh[256] = {0};
    float bh[256] = {0};
    for(int i = 0; i < 256; i++){
        if(r[i] > rmax){
            rmax = r[i];
        } 
        if(g[i] > gmax){
            gmax = g[i];
        }
        if(b[i] > bmax){
            bmax = b[i];
        }
    }
    for(int i = 0; i < 256; i++){
        rh[i] = rmax > 0 ? (float)r[i] / (float)rmax : 0;
        gh[i] = gmax > 0 ? (float)g[i] / (float)gmax : 0;
        bh[i] = bmax > 0 ? (float)b[i] / (float)bmax : 0;
    }
    Histogram hist_r(rh), hist_g(gh), hist_b(bh);

    unsigned int width = 800, height = 600;
    CImg<unsigned char> canvas(width, height, 1, 3, 255);
    
    unsigned char red[] = {255, 0, 0}; 
    hist_r.display(canvas, width, height, red);

    unsigned char green[] = {0, 255, 0}; 
    hist_g.display(canvas, width, height, green);

    unsigned char blue[] = {0, 0, 255}; 
    hist_b.display(canvas, width, height, blue);

    canvas.save(output);
  }

  auto prog_end = std::chrono::steady_clock().now();

  // display measurements

  // execution time of the whole program
  double total_nano = std::chrono::duration_cast<std::chrono::nanoseconds>(prog_end - prog_ini).count();

  // kernel execution time
  cl_ulong time_start;
  cl_ulong time_end;
  clGetEventProfilingInfo(event, CL_PROFILING_COMMAND_START, sizeof(time_start),
                          &time_start, NULL);
  clGetEventProfilingInfo(event, CL_PROFILING_COMMAND_END, sizeof(time_end), &time_end,
                          NULL);
  double kernel_nano = time_end - time_start;
  // memory footprint
  double host_mem = 256 * img.spectrum() * sizeof(unsigned int) + img.width() * img.height() * img.spectrum() * sizeof(unsigned char);

  size_t in_size;
  err = clGetMemObjectInfo(in_device_object, CL_MEM_SIZE, sizeof(in_size), &in_size, NULL);
  size_t r_size;
  err = clGetMemObjectInfo(r_in_out, CL_MEM_SIZE, sizeof(r_size), &r_size, NULL);
  size_t g_size;
  err = clGetMemObjectInfo(g_in_out, CL_MEM_SIZE, sizeof(g_size), &g_size, NULL);
  size_t b_size;
  err = clGetMemObjectInfo(b_in_out, CL_MEM_SIZE, sizeof(b_size), &b_size, NULL);
  std::cout << in_size << ", " << r_size << ", " << g_size << ", " << b_size << std::endl;
  double dev_global_mem = in_size + r_size + g_size + b_size;
  double dev_local_mem = 0;
  // bandwidth (DtoH, HtoD)
  double dtoh_bw = (r_size + g_size + b_size) / (kernel_nano / 1000000000.0);
  double htod_bw = (in_size + r_size + g_size + b_size) / (kernel_nano / 1000000000.0);
  // throughput (work per second)
  double throughput = 1000000000.0 / total_nano;

  clReleaseMemObject(in_device_object);
  clReleaseMemObject(r_in_out);
  clReleaseMemObject(g_in_out);
  clReleaseMemObject(b_in_out);
  clReleaseProgram(program);
  clReleaseKernel(kernel);
  clReleaseCommandQueue(command_queue);
  clReleaseContext(context);

  return measurement_info {
    .total_time = total_nano / 1000000.0,
    .kernel_time = kernel_nano / 1000000.0,
    .dtoh_bw = dtoh_bw / 1024.0,
    .htod_bw = htod_bw / 1024.0,
    .tasks_per_sec = throughput,
    .host_fp = host_mem / 1024.0,
    .device_global_fp = dev_global_mem / 1024.0,
    .device_local_fp = dev_local_mem / 1024.0
  };
}

int main(int argc, char **argv)
{
  if (argc < 3)
  {
    std::cout << "Usage: flip <image_path> <out_path>" << std::endl;
    exit(1);
  }

  int reps = 1;
  bool store = true;
  if (argc == 4) {
    // if number of experiments is specified, don't store histogram result
    reps = std::stoi(argv[3]);
    store = false;
  }

  // average measurements
  measurement_info avg;
  for ( int i = 0; i < reps; i++ ) {
    measurement_info experiment = run_experiment(argv[1], argv[2], store);
    avg += experiment;
    std::cout << "\e[0;32m[Iteration " << i << " / " << reps << "]\e[0m" << std::endl;
    std::cout << experiment << std::endl;
    std::cout << "[--------------------------]" << std::endl;
  }
  
  avg /= double(reps);
  
  // show measurements
  std::cout << "Average measurements: " << std::endl;
  std::cout << avg << std::endl;
  return 0;
}
