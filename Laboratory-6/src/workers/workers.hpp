#pragma once

#include <iostream>

#ifdef __APPLE__
#include <OpenCL/opencl.h>
#else
#include <CL/cl.h>
#endif
#include "CImg.h"
using namespace cimg_library;

#include <chrono>

#include <utils/clutils.hpp>
#include <utils/measurement_info.hpp>

#include <memory>

class CLWorker
{
public:
    CLWorker(
        std::string name,
        cl_platform_id platform_id,
        cl_device_id device_id,

        // command and context ids
        cl_context context_id,
        cl_command_queue cmd_queue,

        // id of the kernel
        cl_kernel kernel,
        cl_program program) : _name(name),
                              _platform_id(platform_id),
                              _device_id(device_id),
                              _context_id(context_id),
                              _cmd_queue(cmd_queue),
                              _kernel(kernel),
                              _program(program)
    {
    }

    /**
     * @brief Setup the task state for a subsequent run.
     */
    virtual void setup(CImg<unsigned char> &img) = 0;

    /**
     * @brief Run the task. Task::setup_task() should've been call first,
     * otherwise this results in undefined behaviour.
     *
     * @return measurement_info
     */
    virtual measurement_info run() = 0;

    /**
     * @brief Save the result of a task.
     * This method can only be called after Task::run(), otherwise
     * this results in undefined behaviour.
     */
    virtual void save_result() = 0;

    /**
     * @brief Release resources acquired at setup
     */
    virtual void release() = 0;

    ~CLWorker() {
        int err;
        std::cout << "Releasing program with id " << _program << std::endl;
        err = clReleaseProgram(_program);
        cl_error(err, "Failed to release program resources");
        std::cout << "Releasing kernel with id " << _kernel << std::endl;
        err = clReleaseKernel(_kernel);
        cl_error(err, "Failed to release kernel resources");
    }

    /********************** get-set functions ********************/
    inline std::string get_name() const { return _name; }

protected:
    std::string _name;
    cl_platform_id _platform_id;
    cl_device_id _device_id;

    // command and context ids
    cl_context _context_id;
    cl_command_queue _cmd_queue;

    // id of the kernel
    cl_kernel _kernel;
    cl_program _program;
};

/** Task definition helper typedefs */
typedef std::shared_ptr<CLWorker> WorkerPtr;
typedef std::function<WorkerPtr(
    std::string,
    cl_platform_id,
    cl_device_id,
    cl_context,
    cl_command_queue,
    cl_kernel,
    cl_program
)> WorkerFn;

typedef std::function<WorkerFn(unsigned int)> WorkerSetupFn;

/**
 * @brief Helper function for creating a general Worker
 */
template <typename TaskType>
WorkerPtr kernel_fn(std::string name,
                    cl_platform_id platform_id,
                    cl_device_id device_id,
                    cl_context context_id,
                    cl_command_queue cmd_queue,
                    cl_kernel kernel,
                    cl_program program)
{
    return std::make_shared<TaskType>(
                name,
                platform_id,
                device_id,
                context_id,
                cmd_queue,
                kernel,
                program);
}