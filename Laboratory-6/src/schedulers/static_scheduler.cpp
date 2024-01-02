#include "static_scheduler.hpp"

#include <utils/clutils.hpp>
#include <utils/measurement_info.hpp>

#include <sstream>
#include <thread>

StaticScheduler::StaticScheduler(const std::string &kernel_path, const std::string &kernel_name, const std::vector<unsigned int> &cores)
	: Scheduler(kernel_path, kernel_name)
{
	// compute workload distributions
	// simple estimation based on concurrent clock ticks per second
	int err;

	double total = 0.0;

	for (int i = 0; i < _workers.size(); i++)
	{
		// CL_DEVICE_MAX_COMPUTE_UNITS outputs wrong values for Nvidia cards
		// We pass the cores manually as an argument

		cl_uint freq;
		err = clGetDeviceInfo(_workers[i].device_id, CL_DEVICE_MAX_CLOCK_FREQUENCY, sizeof(freq), &freq, NULL);
		cl_error(err, "clGetDeviceInfo: Getting device max freq");

		// GHz * compute units
		// std::cout << "max_compute = " << cores[i] << "; freq (MHz) = " << freq << std::endl;
		double ccts = cores[i] * (double)freq / 1000.0;
		// std::cout << "Device " << _workers[i].device_id << " with GHz * CUs = " << ccts << std::endl;

		total += ccts;

		_distr.push_back(ccts);
	}

	// normalize distribution to a discrete PDF
	for (int i = 0; i < _distr.size(); i++)
	{
		_distr[i] /= total;
		// std::cout << "Normalized weight for device " << _workers[i].device_id << ": " << _distr[i] << std::endl;
	}
}

StaticScheduler::StaticScheduler(const std::string &kernel_path, const std::string &kernel_name, const std::vector<double> &distr)
	: Scheduler(kernel_path, kernel_name)
{
	// compute total
	double total = 0.0;
	for (int i = 0; i < distr.size(); i++)
	{
		total += distr[i];
	}
	// normalize distribution to a discrete PDF
	for (int i = 0; i < _distr.size(); i++)
	{
		_distr[i] /= total;
		// std::cout << "Normalized weight for device " << _workers[i].device_id << ": " << _distr[i] << std::endl;
	}
}

void StaticScheduler::run(CImg<unsigned char> &img, unsigned int reps)
{
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
		threads.push_back(std::thread(&StaticScheduler::run_subrange, this, std::ref(img), i, lo, hi));
		// this->run_subrange(img, 0, 0, 1);
	}

	for (auto &t : threads)
	{
		t.join();
	}
}

void StaticScheduler::run_subrange(CImg<unsigned char> &img, unsigned int idx, unsigned int lo, unsigned int hi)
{
	int err; // error code returned from api calls

	size_t width = img.width();
	size_t height = img.height();

	unsigned char *image_ptr = img.data(); // YA tenemos el puntero a la Image

	int x0 = height / 2;
	int y0 = width / 2;

	// Create OpenCL buffer visible to the OpenCl runtime
	cl_mem in_device_object = clCreateBuffer(_workers[idx].context_id, CL_MEM_READ_ONLY, sizeof(unsigned char) * height * width * 3, NULL, &err);
	cl_error(err, "Failed to create in memory buffer at device\n");
	cl_mem out_device_object = clCreateBuffer(_workers[idx].context_id, CL_MEM_WRITE_ONLY, sizeof(unsigned char) * height * width * 3, NULL, &err);
	cl_error(err, "Failed to create out memory buffer at device\n");
	err = clEnqueueWriteBuffer(_workers[idx].cmd_queue, in_device_object, CL_TRUE, 0, sizeof(unsigned char) * height * width * 3,
								image_ptr, 0, NULL, NULL);
	cl_error(err, "Failed to enqueue a write command\n");

	
	measurement_info measurement;

	for (unsigned int i = lo; i < hi; i++)
	{
		float degrees = 5 * i;
		float angle = degrees * (M_PI / 180);
		// Write date into the memory object
		auto prog_ini = std::chrono::steady_clock().now();
	
		err = clSetKernelArg(_workers[idx].kernel, 0, sizeof(cl_mem), &in_device_object);
		cl_error(err, "Failed to set argument 0\n");
		err = clSetKernelArg(_workers[idx].kernel, 1, sizeof(cl_mem), &out_device_object);
		cl_error(err, "Failed to set argument 1\n");
		err = clSetKernelArg(_workers[idx].kernel, 2, sizeof(unsigned int), &width);
		cl_error(err, "Failed to set argument 2\n");
		err = clSetKernelArg(_workers[idx].kernel, 3, sizeof(unsigned int), &height);
		cl_error(err, "Failed to set argument 3\n");
		err = clSetKernelArg(_workers[idx].kernel, 4, sizeof(float), &angle);
		cl_error(err, "Failed to set argument 4\n");
		err = clSetKernelArg(_workers[idx].kernel, 5, sizeof(int), &x0);
		cl_error(err, "Failed to set argument 5\n");
		err = clSetKernelArg(_workers[idx].kernel, 6, sizeof(int), &y0);
		cl_error(err, "Failed to set argument 6\n");

		// Launch Kernel
		cl_event event;

		size_t global_size[3] = {height, width, 3};
		err = clEnqueueNDRangeKernel(_workers[idx].cmd_queue, _workers[idx].kernel, 3, NULL, global_size, NULL, 0, NULL,  &event);
		cl_error(err, "Failed to launch kernel to the device\n");

		unsigned char *img_out = new unsigned char[sizeof(unsigned char) * height * width * 3];
		// Read data form device memory back to host memory

		err = clEnqueueReadBuffer(_workers[idx].cmd_queue, out_device_object, CL_TRUE, 0, sizeof(unsigned char) * height * width * 3, img_out, 0, NULL, NULL);
		cl_error(err, "Failed to enqueue a read command\n");

		auto prog_end = std::chrono::steady_clock().now();

		// execution time of the whole program
		double total_nano = std::chrono::duration_cast<std::chrono::nanoseconds>(prog_end - prog_ini).count();

		// kernel execution time
		cl_ulong time_start;
		cl_ulong time_end;
		clGetEventProfilingInfo(event, CL_PROFILING_COMMAND_START, sizeof(time_start),
								&time_start, NULL);
		clGetEventProfilingInfo(event, CL_PROFILING_COMMAND_END, sizeof(time_end), &time_end,
								NULL);
		double kernel_nano = time_end - time_start;
		// memory footprint
		double host_mem = 256 * img.spectrum() * sizeof(unsigned int) + img.width() * img.height() * img.spectrum() * sizeof(unsigned char);

		size_t in_size;
		err = clGetMemObjectInfo(in_device_object, CL_MEM_SIZE, sizeof(in_size), &in_size, NULL);
		size_t out_size;
		err = clGetMemObjectInfo(out_device_object, CL_MEM_SIZE, sizeof(out_size), &out_size, NULL);
		double dev_global_mem = in_size;
		double dev_local_mem = 0;
		// bandwidth (DtoH, HtoD)
		double dtoh_bw = out_size / (kernel_nano / 1000000000.0);
		double htod_bw = in_size / (kernel_nano / 1000000000.0);
		// throughput (work per second)
		double throughput = 1000000000.0 / kernel_nano;

		measurement_info pmeasurement = {
			.total_time = total_nano / 1000000.0,
			.kernel_time = kernel_nano / 1000000.0,
			.dtoh_bw = dtoh_bw / 1024.0,
			.htod_bw = htod_bw / 1024.0,
			.tasks_per_sec = throughput,
			.host_fp = host_mem / 1024.0,
			.device_global_fp = dev_global_mem / 1024.0,
			.device_local_fp = dev_local_mem / 1024.0};

		CImg<unsigned char> outimg(img_out, img.width(), img.height(), 1, img.spectrum());

		char name[50];
		snprintf(name, 50, "dev%d-%d.png", idx, i);
		outimg.save(name);

		measurement += pmeasurement;
	}
	std::cout << "finished " << _workers[idx].name << std::endl;

	auto prog_end = std::chrono::steady_clock().now();
	clReleaseMemObject(in_device_object);
	clReleaseMemObject(out_device_object);

	clFinish(_workers[idx].cmd_queue);

	// display measurements
	measurement /= double(hi - lo);
	std::cout << measurement << std::endl;
}
