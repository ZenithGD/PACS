#pragma once 

#include "scheduler.hpp"

class StaticScheduler : public Scheduler {
    public:

        /**
         * Static scheduler with automatic workload distribution, 
         * based on the number of compute cores passed as argument and the underlying core clock frequency
        */
        StaticScheduler(const std::string& kernel_path, const std::string& kernel_name, const std::vector<unsigned int>& cores);

        /**
         * Static scheduler with preset workload distribution
         * Note that the distribution might not be the optimal one!
         * 
         * distribution will always be normalized to a discrete PDF
        */
        StaticScheduler(const std::string& kernel_path, const std::string& kernel_name, const std::vector<double>& distr);

        void run(CImg<unsigned char>& img, unsigned int reps) override;
    private:

        void run_subrange(CImg<unsigned char>& img, unsigned int idx, unsigned int lo, unsigned int hi);

        // actual fixed workload distribution
        std::vector<double> _distr;
};