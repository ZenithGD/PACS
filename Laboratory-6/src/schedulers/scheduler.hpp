#pragma once

#define cimg_use_jpeg
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

#include <workers/workers.hpp>

#include <set>

class Scheduler
{
public:
    /**
     * @brief Create a scheduler with all available devices
     */
    Scheduler(const WorkerSetupFn &_wfn);

    /**
     * @brief Create a scheduler with a subset of the devices
     * 
     * @param selection The set of the indices that correspond with the devices. 
     * If the selection is empty, all the devices will be used.
     */
    Scheduler(const WorkerSetupFn &_wfn, std::set<unsigned int> selection);

    virtual std::vector<measurement_info> run(CImg<unsigned char> &img, unsigned int reps, bool store) = 0;

    ~Scheduler();

    /********************** get-set functions *********************/
    inline const std::vector<std::shared_ptr<CLWorker>>& get_workers() const { return _workers; }

protected:
    // OpenCL resources
    std::vector<cl_context> _contexts;
    std::vector<cl_command_queue> _queues;

    std::vector<std::shared_ptr<CLWorker>> _workers;
};