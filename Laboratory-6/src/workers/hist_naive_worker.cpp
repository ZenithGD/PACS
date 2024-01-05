#include "hist_naive_worker.hpp"

#include <utils/plot_hist.hpp>

void NaiveHist::setup(CImg<unsigned char> &img)
{
    int err;

    _width = img.width();
    _height = img.height();
    _channels = img.spectrum();
    _image_ptr = img.data();

    _csize = 256;
    _ncells = img.height() * img.width() / _csize + img.height() * img.width() % _csize == 0 ? 1 : 0;

    _r[256] = {0};
    _g[256] = {0};
    _b[256] = {0};
    // Create OpenCL buffer visible to the OpenCl runtime
    _in_device_object = clCreateBuffer(_context_id, CL_MEM_READ_ONLY, sizeof(unsigned char) * _height * _width * _channels, NULL, &err);
    cl_error(err, "Failed to create in memory buffer at device\n");
    _r_in_out = clCreateBuffer(_context_id, CL_MEM_READ_WRITE, sizeof(int) * 256, NULL, &err);
    cl_error(err, "Failed to create r out memory buffer at device\n");
    _g_in_out = clCreateBuffer(_context_id, CL_MEM_READ_WRITE, sizeof(int) * 256, NULL, &err);
    cl_error(err, "Failed to create g out memory buffer at device\n");
    _b_in_out = clCreateBuffer(_context_id, CL_MEM_READ_WRITE, sizeof(int) * 256, NULL, &err);
    cl_error(err, "Failed to create b out memory buffer at device\n");

    // Write date into the memory object
    err = clEnqueueWriteBuffer(_cmd_queue, _in_device_object, CL_TRUE, 0, sizeof(unsigned char) * _height * _width * _channels,
                               _image_ptr, 0, NULL, NULL);
    err = clEnqueueWriteBuffer(_cmd_queue, _r_in_out, CL_TRUE, 0, sizeof(int) * 256,
                               _r, 0, NULL, NULL);
    err = clEnqueueWriteBuffer(_cmd_queue, _g_in_out, CL_TRUE, 0, sizeof(int) * 256,
                               _g, 0, NULL, NULL);
    err = clEnqueueWriteBuffer(_cmd_queue, _b_in_out, CL_TRUE, 0, sizeof(int) * 256,
                               _b, 0, NULL, NULL);
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

measurement_info NaiveHist::run()
{
    int err;

    // Kernel arguments can be set in the CLWorker::setup() too, as long as they don't change.
    // img
    err = clSetKernelArg(_kernel, 0, sizeof(cl_mem), &_in_device_object);
    cl_error(err, "Failed to set argument 0\n");

    // r, g, b
    err = clSetKernelArg(_kernel, 1, sizeof(cl_mem), &_r_in_out);
    cl_error(err, "Failed to set argument 1\n");
    err = clSetKernelArg(_kernel, 2, sizeof(cl_mem), &_g_in_out);
    cl_error(err, "Failed to set argument 2\n");
    err = clSetKernelArg(_kernel, 3, sizeof(cl_mem), &_b_in_out);
    cl_error(err, "Failed to set argument 3\n");

    // rpart, gpart, bpart local memory (256 per wg)
    err = clSetKernelArg(_kernel, 4, 256 * sizeof(unsigned int), NULL);
    cl_error(err, "Failed to set argument 4\n");
    err = clSetKernelArg(_kernel, 5, 256 * sizeof(unsigned int), NULL);
    cl_error(err, "Failed to set argument 5\n");
    err = clSetKernelArg(_kernel, 6, 256 * sizeof(unsigned int), NULL);
    cl_error(err, "Failed to set argument 6\n");

    // cols, rows
    err = clSetKernelArg(_kernel, 7, sizeof(unsigned int), &_width);
    cl_error(err, "Failed to set argument 7\n");
    err = clSetKernelArg(_kernel, 8, sizeof(unsigned int), &_height);
    cl_error(err, "Failed to set argument 8\n");
    
    // Launch Kernel
    cl_event event;
    size_t local_size[1] = {_csize};

    // round up to nearest multiple of csize
    size_t global_size[1] = {_height * _width + _csize - _height * _width % _csize};
    
    err = clEnqueueNDRangeKernel(_cmd_queue, _kernel, 1, NULL, global_size, local_size, 0, NULL, &event);
    cl_error(err, "Failed to launch kernel to the device\n");

    double dtoh_time = 0.0;
    err = clEnqueueReadBuffer(_cmd_queue, _r_in_out, CL_TRUE, 0, sizeof(int) * 256, _r, 0, NULL, &event);
    cl_error(err, "Failed to enqueue  R a read command\n");
    dtoh_time += get_time(event);
    err = clEnqueueReadBuffer(_cmd_queue, _g_in_out, CL_TRUE, 0, sizeof(int) * 256, _g, 0, NULL, &event);
    cl_error(err, "Failed to enqueue G a read command\n");
    dtoh_time += get_time(event);
    err = clEnqueueReadBuffer(_cmd_queue, _b_in_out, CL_TRUE, 0, sizeof(int) * 256, _b, 0, NULL, &event);
    cl_error(err, "Failed to enqueue B a read command\n");
    dtoh_time += get_time(event);

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
    double host_mem = _csize * _channels * sizeof(unsigned int) + _width * _height * _channels * sizeof(unsigned char);

    size_t in_size;
    err = clGetMemObjectInfo(_in_device_object, CL_MEM_SIZE, sizeof(in_size), &in_size, NULL);
    size_t r_size;
    err = clGetMemObjectInfo(_r_in_out, CL_MEM_SIZE, sizeof(r_size), &r_size, NULL);
    size_t g_size;
    err = clGetMemObjectInfo(_g_in_out, CL_MEM_SIZE, sizeof(g_size), &g_size, NULL);
    size_t b_size;
    err = clGetMemObjectInfo(_b_in_out, CL_MEM_SIZE, sizeof(b_size), &b_size, NULL);
    double dev_global_mem = in_size + r_size + g_size + b_size;
    double dev_local_mem = 256 * sizeof(unsigned int) * _channels * _csize;
    // bandwidth (DtoH, HtoD)
    double dtoh_bw = (r_size + g_size + b_size) / (kernel_nano / 1000000000.0);
    double htod_bw = (in_size + r_size + g_size + b_size) / (kernel_nano / 1000000000.0);
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

void NaiveHist::release()
{
    // release all objects
    clReleaseMemObject(_in_device_object);
    clReleaseMemObject(_r_in_out);
    clReleaseMemObject(_g_in_out);
    clReleaseMemObject(_b_in_out);
}

void NaiveHist::save_result()
{

    int rmax = 0;
    int gmax = 0;
    int bmax = 0;
    float rh[256] = {0};
    float gh[256] = {0};
    float bh[256] = {0};
    for (int i = 0; i < 256; i++)
    {
        if (_r[i] > rmax)
        {
            rmax = _r[i];
        }
        if (_g[i] > gmax)
        {
            gmax = _g[i];
        }
        if (_b[i] > bmax)
        {
            bmax = _b[i];
        }
    }
    for (int i = 0; i < 256; i++)
    {
        rh[i] = rmax > 0 ? (float)_r[i] / (float)rmax : 0;
        gh[i] = gmax > 0 ? (float)_g[i] / (float)gmax : 0;
        bh[i] = bmax > 0 ? (float)_b[i] / (float)bmax : 0;
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

    std::ostringstream os;
    os << "dev" << _name << ".jpeg";
    canvas.save(os.str().c_str());
}