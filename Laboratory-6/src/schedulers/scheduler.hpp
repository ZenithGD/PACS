#pragma once

#include <iostream>

#ifdef __APPLE__
#include <OpenCL/opencl.h>
#else
#include <CL/cl.h>
#endif
#include "CImg.h"

#include <chrono>

struct Worker {
    cl_platform_id platform_id;
    cl_device_id device_id;

    // command and context ids
    cl_context context_id;
    cl_command_queue cmd_queue;
};

class Scheduler {
public:
    /**
     * @brief Create a scheduler with all available devices
     * 
     * @param images 
     */
    Scheduler();

    virtual void run(const std::unordered_map<std::string, unsigned int>& images) = 0;

    ~Scheduler();
protected:
    // OpenCL resources
    std::vector<cl_context> _contexts;
    std::vector<cl_command_queue> _queues;

    std::vector<Worker> _workers;
    const std::unordered_map<std::string, unsigned int> _images;
};