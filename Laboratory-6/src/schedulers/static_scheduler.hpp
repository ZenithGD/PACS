#pragma once 

#include "scheduler.hpp"

class StaticScheduler : public Scheduler {
    public:

        /**
         * Static scheduler with automatic workload distribution, 
         * based on the number of compute cores passed as argument and the underlying core clock frequency
        */
        StaticScheduler(const std::vector<unsigned int>& cores);

        /**
         * Static scheduler with preset workload distribution
         * Note that the distribution might not be the optimal one!
         * 
         * distribution will always be normalized to a discrete PDF
        */
        StaticScheduler(const std::vector<double>& distr);

        void run(const std::unordered_map<std::string, unsigned int>& images) override;
    private:

        // actual fixed workload distribution
        std::vector<double> _distr;
};