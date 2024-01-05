#include "static_scheduler.hpp"

#include <sstream>
#include <thread>

#include <plot_hist.hpp>

StaticScheduler::StaticScheduler(const std::string &kernel_path, const std::string &kernel_name, 
	const WorkerSetupFn &_wfn, const std::vector<double> &distr)
	: Scheduler(kernel_path, kernel_name, _wfn)
{
	// compute total
	double total = 0.0;
	for (int i = 0; i < distr.size(); i++)
	{
		total += distr[i];
	}
	// normalize distribution to a discrete PDF
	for (int i = 0; i < distr.size(); i++)
	{
		_distr.push_back(distr[i] / total);
		// std::cout << "Normalized weight for device " << _workers[i].device_id << ": " << _distr[i] << std::endl;
	}
}

std::vector<measurement_info> StaticScheduler::run(CImg<unsigned char> &img, unsigned int reps, bool store)
{
	std::vector<measurement_info> iv(_workers.size());

	// compute image range indices
	double acc = 0.0;
	std::vector<unsigned int> indices;
	for (unsigned i = 0; i < _distr.size(); i++)
	{
		acc += _distr[i];
		indices.push_back(static_cast<unsigned int>(reps * acc));
	}

	std::vector<std::thread> threads;
	for (unsigned int i = 0; i < _workers.size(); i++)
	{
		unsigned int lo = i > 0 ? indices[i - 1] : 0;
		unsigned int hi = i < _workers.size() - 1 ? indices[i] : reps;
		std::cout << "Thread i = " << i << ": [" << lo << ", " << hi << ")" << std::endl;
		threads.push_back(std::thread(&StaticScheduler::run_subrange, this, std::ref(img), i, lo, hi, std::ref(iv[i]), store));
	}

	for (auto &t : threads)
	{
		t.join();
	}

	return iv;
}

void StaticScheduler::run_subrange(CImg<unsigned char> &img, unsigned int idx, unsigned int lo, unsigned int hi, measurement_info &info, bool store)
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
