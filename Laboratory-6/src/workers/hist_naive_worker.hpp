#pragma once

#include "workers.hpp"
/**
 * Histogram computation without overlap.
 * Uses both global and local memory
 * Each workitem works with all the channels of a pixel.
 */
class NaiveHist : public CLWorker
{
public:
    NaiveHist(
        std::string name,
        cl_platform_id platform_id,
        cl_device_id device_id,

        // command and context ids
        cl_context context_id,
        cl_command_queue cmd_queue) : CLWorker(name,
                                       platform_id,
                                       device_id,
                                       context_id,
                                       cmd_queue)
    {
        std::cout << "Hist -----------" << std::endl;
        int err;
        // 2.3 Create kernel for each device
        // build kernel for each device
        char *source = read_source("kernels/hist_tile.cl");

        const char *src_arr[1] = {source};

        const size_t lengths[1] = {strlen(source)};

        // create program from buffer
        _program = clCreateProgramWithSource(_context_id, 1, src_arr, lengths, &err);
        cl_error(err, "Failed to create program with source\n");
        delete source;

        // Build the executable and check errors
        err = clBuildProgram(_program, 0, NULL, "-cl-std=CL2.0", NULL, NULL);
        char buffer[2048];
        if (err != CL_SUCCESS)
        {
            size_t len;
            printf("Error: Some error at building process.\n");
            clGetProgramBuildInfo(_program, _device_id, CL_PROGRAM_BUILD_LOG, sizeof(buffer), &buffer, NULL);
            printf("%s\n", buffer);
            exit(-1);
        }
        clGetProgramBuildInfo(_program, _device_id, CL_PROGRAM_BUILD_LOG, sizeof(buffer), &buffer, NULL);
        printf("Info: %s\n", buffer);

        _kernel = clCreateKernel(_program, "hist_tile", &err);
        cl_error(err, "Failed to create kernel from the program\n");
    }

    /**
     * @brief Initialize state needed by the histogram kernel.
     */
    void setup(CImg<unsigned char> &img) override;

    /**
     * @brief Run the histogram task
     *
     * @return measurement_info Time and memory measurements.
     */
    measurement_info run() override;

    /**
     * @brief Save the result of a task.
     * This method can only be called after Task::run(), otherwise
     * this results in undefined behaviour.
     */
    void save_result() override;

    /**
     * @brief Release resources acquired at setup
     */
    void release() override;

private:
    cl_mem _in_device_object;
    cl_mem _r_in_out;
    cl_mem _g_in_out;
    cl_mem _b_in_out;

    size_t _width, _height, _channels;

    unsigned char *_image_ptr;

    unsigned int _csize;
    unsigned int _ncells;

    int _r[256] = {0};
    int _g[256] = {0};
    int _b[256] = {0};
};