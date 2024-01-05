#pragma once 

#include "scheduler.hpp"

class DynamicScheduler : public Scheduler {
    public:

        /**
         * Static scheduler with automatic workload distribution, 
         * based on the number of compute cores passed as argument and the underlying core clock frequency
        */
        DynamicScheduler(const std::string& kernel_path, const std::string& kernel_name, const WorkerSetupFn &_wfn, const unsigned int step);

        std::vector<measurement_info> run(CImg<unsigned char>& img, unsigned int reps, bool store) override;
    private:

        void run_subrange(CImg<unsigned char>& img, unsigned int idx, unsigned int lo, unsigned int hi, measurement_info& info, bool store);

        // current workload distribution
        std::vector<double> _distr;

        // 
        std::vector<std::vector<double>> _balance_ev;
        
        unsigned int _step;
};