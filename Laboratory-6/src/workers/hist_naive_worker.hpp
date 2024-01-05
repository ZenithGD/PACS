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
        cl_command_queue cmd_queue,

        // id of the kernel
        cl_kernel kernel,
        cl_program program) : CLWorker(name,
                                       platform_id,
                                       device_id,
                                       context_id,
                                       cmd_queue,
                                       kernel,
                                       program)
    {
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