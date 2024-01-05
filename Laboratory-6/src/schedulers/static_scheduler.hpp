#pragma once

#include "scheduler.hpp"

class StaticScheduler : public Scheduler
{
public:
    /**
     * Static scheduler with preset workload distribution
     * Note that the distribution might not be the optimal one!
     *
     * distribution will always be normalized to a discrete PDF
     */
    StaticScheduler(const std::string &kernel_path, const std::string &kernel_name,
                    const WorkerSetupFn &_wfn, const std::vector<double> &distr);

    std::vector<measurement_info> run(CImg<unsigned char> &img, unsigned int reps, bool store) override;

private:
    void run_subrange(CImg<unsigned char> &img, unsigned int idx, unsigned int lo, unsigned int hi, measurement_info &info, bool store);

    // actual fixed workload distribution
    std::vector<double> _distr;
};