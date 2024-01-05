#include "rot_naive_worker.hpp"

#include <utils/plot_hist.hpp>

void NaiveRot::setup(CImg<unsigned char> &img)
{
    int err;

    _width = img.width();
    _height = img.height();
    _channels = img.spectrum();
    _image_ptr = img.data();
    _img_out = new unsigned char[sizeof(unsigned char) * _height * _width * 3];

    // Create OpenCL buffer visible to the OpenCl runtime
    _in_device_object = clCreateBuffer(_context_id, CL_MEM_READ_ONLY, sizeof(unsigned char) * _height * _width * 3, NULL, &err);
    cl_error(err, "Failed to create in memory buffer at device\n");
    _out_device_object = clCreateBuffer(_context_id, CL_MEM_WRITE_ONLY, sizeof(unsigned char) * _height * _width * 3, NULL, &err);
    cl_error(err, "Failed to create out memory buffer at device\n");

    // Write date into the memory object
    err = clEnqueueWriteBuffer(_cmd_queue, _in_device_object, CL_TRUE, 0, sizeof(unsigned char) * _height * _width * 3,
                                _image_ptr, 0, NULL, NULL);
    cl_error(err, "Failed to enqueue a write command\n");
}

inline double get_time(cl_event event) {
    cl_ulong time_start;
    cl_ulong time_end;
    clGetEventProfilingInfo(event, CL_PROFILING_COMMAND_START, sizeof(time_start),
                            &time_start, NULL);
    clGetEventProfilingInfo(event, CL_PROFILING_COMMAND_END, sizeof(time_end), &time_end,
                            NULL);
    double kernel_nano = time_end - time_start;

    return kernel_nano;
}

measurement_info NaiveRot::run()
{
    float degrees = 45;
    float angle = degrees * (M_PI / 180);
    int x0 = _height / 2;
    int y0 = _width / 2;
    int err;

    cl_event event;
        
    err = clSetKernelArg(_kernel, 0, sizeof(cl_mem), &_in_device_object);
    cl_error(err, "Failed to set argument 0\n");
    err = clSetKernelArg(_kernel, 1, sizeof(cl_mem), &_out_device_object);
    cl_error(err, "Failed to set argument 1\n");
    err = clSetKernelArg(_kernel, 2, sizeof(unsigned int), &_width);
    cl_error(err, "Failed to set argument 2\n");
    err = clSetKernelArg(_kernel, 3, sizeof(unsigned int), &_height);
    cl_error(err, "Failed to set argument 3\n");
    err = clSetKernelArg(_kernel, 4, sizeof(float), &angle);
    cl_error(err, "Failed to set argument 4\n");
    err = clSetKernelArg(_kernel, 5, sizeof(int), &x0);
    cl_error(err, "Failed to set argument 5\n");
    err = clSetKernelArg(_kernel, 6, sizeof(int), &y0);
    cl_error(err, "Failed to set argument 6\n");

  // Launch Kernel
  
  size_t global_size[3] = {_height, _width};
  err = clEnqueueNDRangeKernel(_cmd_queue, _kernel, 2, NULL, global_size, NULL, 0, NULL, &event);
  cl_error(err, "Failed to launch kernel to the device\n");
  // Read data form device memory back to host memory

  err = clEnqueueReadBuffer(_cmd_queue, _out_device_object, CL_TRUE, 0, sizeof(unsigned char) * _height * _width * 3, _img_out, 0, NULL, NULL);
  cl_error(err, "Failed to enqueue a read command\n");
  double dtoh_time = get_time(event);
    // display measurements

    // kernel execution time
    cl_ulong time_start;
    cl_ulong time_end;
    clGetEventProfilingInfo(event, CL_PROFILING_COMMAND_START, sizeof(time_start),
                            &time_start, NULL);
    clGetEventProfilingInfo(event, CL_PROFILING_COMMAND_END, sizeof(time_end), &time_end,
                            NULL);
    double kernel_nano = time_end - time_start;
    // memory footprint
    double host_mem = _width * _height * _channels * sizeof(unsigned char);

    size_t in_size;
    err = clGetMemObjectInfo(_in_device_object, CL_MEM_SIZE, sizeof(in_size), &in_size, NULL);
    size_t out_size;
    err = clGetMemObjectInfo(_out_device_object, CL_MEM_SIZE, sizeof(out_size), &out_size, NULL);
    
    double dev_global_mem = in_size + out_size;
    double dev_local_mem = 0;
    // bandwidth (DtoH, HtoD)
    double dtoh_bw = out_size / (kernel_nano / 1000000000.0);
    double htod_bw = in_size / (kernel_nano / 1000000000.0);
    // throughput (work per second)
    double throughput = 1000000000.0 / kernel_nano;

    return measurement_info {
        .kernel_time = kernel_nano / 1000000.0,
        .dtoh_bw = dtoh_bw / 1024.0,
        .htod_bw = htod_bw / 1024.0,
        .tasks_per_sec = throughput,
        .host_fp = host_mem / 1024.0,
        .device_global_fp = dev_global_mem / 1024.0,
        .device_local_fp = dev_local_mem / 1024.0,
        .dtoh_time = dtoh_time / 1000000.0};
}

void NaiveRot::release()
{
    // release all objects
    clReleaseMemObject(_in_device_object);
    clReleaseMemObject(_out_device_object);

    delete[] _img_out;
}

void NaiveRot::save_result()
{
    CImg<unsigned char> canvas(_img_out, _width, _height, 1, 3);
    std::ostringstream os;
    os << "dev" << _name << ".jpeg";
    canvas.save(os.str().c_str());
}