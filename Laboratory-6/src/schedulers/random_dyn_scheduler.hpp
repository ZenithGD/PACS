#pragma once 

#include "scheduler.hpp"

class StaticScheduler : public Scheduler {
    public:

        /**
         * Static scheduler with automatic workload distribution, 
         * based on the expected performance of each device.
        */
        StaticScheduler();

        /**
         * Static scheduler with preset workload distribution
         * Note that the distribution might not be the optimal one!
        */
        StaticScheduler(std::vector<double> distr);

        std::vector<measurement_info> run(const std::unordered_map<std::string, unsigned int>& images) override;
    private:

        // actual fixed workload distribution
        std::vector<double> _distr;
};