#include "static_scheduler.hpp"

#include <utils/clutils.hpp>

StaticScheduler::StaticScheduler(const std::vector<unsigned int>& cores)
    : Scheduler()
{
    // compute workload distributions
    // simple estimation based on concurrent clock ticks per second
    int err;

    double total = 0.0;

    for ( int i = 0; i < _workers.size(); i++ )
    {
        //CL_DEVICE_MAX_COMPUTE_UNITS outputs wrong values for Nvidia cards
        //We pass the cores manually as an argument

        cl_uint freq;
        err = clGetDeviceInfo(_workers[i].device_id, CL_DEVICE_MAX_CLOCK_FREQUENCY, sizeof(freq), &freq, NULL);
        cl_error(err, "clGetDeviceInfo: Getting device max freq");

        // GHz * compute units
        std::cout << "max_compute = " << cores[i] << "; freq (MHz) = " << freq << std::endl;
        double ccts = cores[i] * (double)freq / 1000.0;
        std::cout << "Device " << _workers[i].device_id << " with GHz * CUs = " << ccts << std::endl;

        total += ccts;

        _distr.push_back(ccts);
    }

    // normalize distribution to a discrete PDF
    for ( int i = 0; i < _distr.size(); i++ ) {
        _distr[i] /= total;
        std::cout << "Normalized weight for device " << _workers[i].device_id << ": " << _distr[i] << std::endl; 
    }
}

StaticScheduler::StaticScheduler(const std::vector<double>& distr)
{
    std::cout << "set distr" << std::endl;
}

void StaticScheduler::run(const std::unordered_map<std::string, unsigned int> &images)
{
}