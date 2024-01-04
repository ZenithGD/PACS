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

struct Worker {
    std::string name;
    cl_platform_id platform_id;
    cl_device_id device_id;

    // command and context ids
    cl_context context_id;
    cl_command_queue cmd_queue;


    // id of the kernel
    cl_kernel kernel;
    cl_program program;
};

class Scheduler {
public:
    /**
     * @brief Create a scheduler with all available devices
     * 
     * @param images 
     */
    Scheduler(const std::string& kernel_path, const std::string& kernel_name);

    virtual std::vector<measurement_info> run(CImg<unsigned char>& img, unsigned int reps, bool store) = 0;

    ~Scheduler();
protected:

    // OpenCL resources
    std::vector<cl_context> _contexts;
    std::vector<cl_command_queue> _queues;

    std::vector<Worker> _workers;
};