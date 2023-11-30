////////////////////////////////////////////////////////////////////
//File: basic_environ.c
//
//Description: base file for environment exercises with openCL
//
// 
////////////////////////////////////////////////////////////////////

#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <iostream>
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

void cl_error(cl_int code, const char *string){
	if (code != CL_SUCCESS){
		printf("%d - %s\n", code, string);
	    exit(-1);
	}
}
////////////////////////////////////////////////////////////////////////////////

int main(int argc, char** argv)
{
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
  FILE *fileHandler = fopen("hist_kernel.cl", "r");
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

  cl_kernel kernel = clCreateKernel(program, "flip", &err);
  cl_error(err, "Failed to create kernel from the program\n");

  //CREAR LAS VARIABLES QUE USARA EL KERNEL
  CImg<unsigned char> img("pomni.jpg");  // Load image file "image.jpg" at object img

  size_t ancho = img.width();
  size_t alto = img.height();

  bool display = true;
  if(display){

    CImgDisplay ventana(img, "Imagen");

    while (!ventana.is_closed()) {
        // Esperar a eventos en la ventana
        ventana.wait();
    }
  }

  unsigned char* ptrImagen = img.data(); // YA tenemos el puntero a la imagen

  float r[256] = {0.0};
  float g[256] = {0.0};
  float b[256] = {0.0};

  

  // Create OpenCL buffer visible to the OpenCl runtime
  cl_mem in_device_object  = clCreateBuffer(context, CL_MEM_READ_ONLY, sizeof(unsigned char) * alto * ancho * 3, NULL, &err);
  cl_error(err, "Failed to create in memory buffer at device\n");
  cl_mem r_in_out = clCreateBuffer(context, CL_MEM_READ_WRITE, sizeof(float) * 256, NULL, &err);
  cl_error(err, "Failed to create r out memory buffer at device\n");
  cl_mem g_in_out = clCreateBuffer(context, CL_MEM_READ_WRITE, sizeof(float) * 256, NULL, &err);
  cl_error(err, "Failed to create g out memory buffer at device\n");
  cl_mem b_in_out = clCreateBuffer(context, CL_MEM_READ_WRITE, sizeof(float) * 256, NULL, &err);
  cl_error(err, "Failed to create b out memory buffer at device\n");


   // Write date into the memory object 
  err = clEnqueueWriteBuffer(command_queue, in_device_object, CL_TRUE, 0, sizeof(unsigned char) * alto * ancho * 3, 
                            ptrImagen, 0, NULL, NULL);
  err = clEnqueueWriteBuffer(command_queue, r_in_out, CL_TRUE, 0, sizeof(float) * 256, 
                            r, 0, NULL, NULL);
  err = clEnqueueWriteBuffer(command_queue, g_in_out, CL_TRUE, 0, sizeof(float) * 256, 
                            g, 0, NULL, NULL);
  err = clEnqueueWriteBuffer(command_queue, b_in_out, CL_TRUE, 0, sizeof(float) * 256, 
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
  err = clSetKernelArg(kernel, 4, sizeof(unsigned int), &ancho);
  cl_error(err, "Failed to set argument 4\n");
  err = clSetKernelArg(kernel, 5, sizeof(unsigned int), &alto);
  cl_error(err, "Failed to set argument 5\n");


  // Launch Kernel
  local_size = 128;
  size_t global_size[4] = {alto, ancho, 3, 256};  
  err = clEnqueueNDRangeKernel(command_queue, kernel, 4, NULL, global_size, NULL, 0, NULL, NULL);
  cl_error(err, "Failed to launch kernel to the device\n");

  
  err = clEnqueueReadBuffer(command_queue, r_in_out, CL_TRUE, 0, sizeof(float) * 256, r, 0, NULL, NULL);
  cl_error(err, "Failed to enqueue  R a read command\n");
  err = clEnqueueReadBuffer(command_queue, g_in_out, CL_TRUE, 0, sizeof(float) * 256, g, 0, NULL, NULL);
  cl_error(err, "Failed to enqueue G a read command\n");
  err = clEnqueueReadBuffer(command_queue, b_in_out, CL_TRUE, 0, sizeof(float) * 256, b, 0, NULL, NULL);
  cl_error(err, "Failed to enqueue B a read command\n");
  printf("piola\n");

  float rmax = 0;
  float gmax = 0;
  float bmax = 0;
  for(int i = 0; i < 10; i++){
      cout << "R[" << i << "]: " << r[i] << endl;
  }
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
      r[i] /= rmax;
      g[i] /= gmax;
      b[i] /= bmax;
  }
  
  const int ancho_ventana = 800;
  const int alto_ventana = 500;

  // Crear una imagen para las gráficas
  CImg<unsigned char> grafica(ancho_ventana, alto_ventana, 1, 3, 255);
  unsigned char blue[] = { 0,0,255 };  
  unsigned char red[] = { 255,0,0 };  
  unsigned char green[] = { 0,255,0 };  
  // Definir los valores en los ejes x e y
  const int num_puntos = 256;
  float valores_x[num_puntos];

  // const float valores_y[num_puntos];
  for(int i = 0; i < num_puntos; i++){
      valores_x[i] = i;
  }
  int sum = ancho_ventana/256;
  float x2 = valores_x[0];
  // Dibujar la gráfica
  for (int i = 0; i < num_puntos; ++i) {
      const float x1 = x2;
      const float y1 = alto_ventana * (1 - r[i]);
      x2 = x2 + sum;
      const float y2 = alto_ventana * (1 - r[i + 1]);

      // cout << "x1: " << x1 << ", y1: " << y1 << "| " << x2 << ", " << y2 << endl;
      // cin.get();
      grafica.draw_line(x1, y1, x2, y2, red);
  }
  x2 = 0;
  for (int i = 0; i < num_puntos; ++i) {
      const float x1 = x2;
      const float y1 = alto_ventana * (1 - g[i]);
      x2 = x2 + sum;
      const float y2 = alto_ventana * (1 - g[i + 1]);

      // cout << "x1: " << x1 << ", y1: " << y1 << "| " << x2 << ", " << y2 << endl;
      // cin.get();
      grafica.draw_line(x1, y1, x2, y2, green);
  }
  x2 = 0;
  for (int i = 0; i < num_puntos; ++i) {
      const float x1 = x2;
      const float y1 = alto_ventana * (1 - b[i]);
      x2 = x2 + sum;
      const float y2 = alto_ventana * (1 - b[i + 1]);

      // cout << "x1: " << x1 << ", y1: " << y1 << "| " << x2 << ", " << y2 << endl;
      // cin.get();
      grafica.draw_line(x1, y1, x2, y2, blue);
  }

  // Mostrar la imagen con la gráfica
  CImgDisplay ventanaGR(grafica, "Gráfica con CImg");

  while (!ventanaGR.is_closed())
    {
        // Esperar a eventos en la ventana
        ventanaGR.wait();
    }

  


  clReleaseMemObject(in_device_object);
  clReleaseMemObject(r_in_out);
  clReleaseMemObject(g_in_out);
  clReleaseMemObject(b_in_out);
  clReleaseProgram(program);
  clReleaseKernel(kernel);
  clReleaseCommandQueue(command_queue);
  clReleaseContext(context);
  return 0;
}

