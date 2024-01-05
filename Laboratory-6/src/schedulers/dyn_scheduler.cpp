#include "dyn_scheduler.hpp"

#include <sstream>
#include <thread>

#include <plot_hist.hpp>

DynamicScheduler::DynamicScheduler(const std::string &kernel_path, const std::string &kernel_name, const WorkerSetupFn &_wfn, const unsigned int step)
    : Scheduler(kernel_path, kernel_name, _wfn), _step(step), _distr(_workers.size())
{
    // Initial uniform distribution
    std::vector<double> dist_snapshot;
    for (int i = 0; i < _workers.size(); i++)
    {
        _distr[i] = 1.0f / (double)_workers.size();
        // std::cout << "Normalized weight for device " << _workers[i].device_id << ": " << _distr[i] << std::endl;

        // save initial balancing for device
        dist_snapshot.push_back(_distr[i]);
    }
    // save balancing snapshot
    _balance_ev.push_back(dist_snapshot);
}

std::vector<measurement_info> DynamicScheduler::run(CImg<unsigned char> &img, unsigned int reps, bool store)
{
    std::vector<measurement_info> total_iv(_workers.size());
    for (unsigned int s = 0; s < reps; s += _step)
    {
        std::vector<measurement_info> iv(_workers.size());

        // compute image range indices
        double acc = 0.0;
        std::vector<unsigned int> indices;
        for (unsigned i = 0; i < _distr.size(); i++)
        {
            acc += _distr[i];
            unsigned int sz = std::min(_step, reps - s);
            indices.push_back(static_cast<unsigned int>(sz * acc));
        }

        /*
         * NOTE: This could've been optimized by not creating the threads after each split.
         * A queue could've been used for sending the subrange of images to process, but
         * for simplicity we left it as it is.
         */
        std::vector<std::thread> threads;
        for (unsigned int i = 0; i < _workers.size(); i++)
        {
            unsigned int lo = s + (i > 0 ? indices[i - 1] : 0);
            unsigned int hi = std::min(s + (i < _workers.size() - 1 ? indices[i] : _step), reps);
            std::cout << "Thread i = " << i << ": [" << lo << ", " << hi << ")" << std::endl;
            threads.push_back(std::thread(&DynamicScheduler::run_subrange, this, std::ref(img), i, lo, hi, std::ref(iv[i]), store));
        }

        for (auto &t : threads)
        {
            t.join();
        }

        // update workload distribution based on task throughput
        double total_thr = 0.0;
        for ( auto& m : iv ) {
            total_thr += m.tasks_per_sec;
        }

        std::cout << "New distribution: " << std::endl;

        // update weights
        std::vector<double> dist_snapshot;
        for ( unsigned int i = 0; i < _distr.size(); i++ ) {
            _distr[i] = iv[i].tasks_per_sec / total_thr;
            std::cout << _workers[i]->get_name() << ": " << _distr[i] << std::endl;

            // accumulate measurement
            total_iv[i] += iv[i];

            // save balancing for device
            dist_snapshot.push_back(_distr[i]);
        }

        // save balancing snapshot
        _balance_ev.push_back(dist_snapshot);
    }

    return total_iv;
}

void DynamicScheduler::run_subrange(CImg<unsigned char> &img, unsigned int idx, unsigned int lo, unsigned int hi, measurement_info &info, bool store)
{
	auto prog_ini = std::chrono::steady_clock().now();

	_workers[idx]->setup(img);

	for (unsigned int i = lo; i < hi; i++)
	{
		measurement_info pm = _workers[idx]->run();

		info += pm;

		if (i == hi - 1 && store)
		{
			_workers[idx]->save_result();
		}
	}
	auto prog_end = std::chrono::steady_clock().now();

	// execution time of the whole program in one device
	double total_nano = std::chrono::duration_cast<std::chrono::nanoseconds>(prog_end - prog_ini).count();

	info /= (hi - lo);
	info.total_time = total_nano / 1000000.0;

	_workers[idx]->release();
}
