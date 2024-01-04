#include "static_scheduler.hpp"

#include <sstream>
#include <thread>

#include <plot_hist.hpp>

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
	int err;
	auto prog_ini = std::chrono::steady_clock().now();

	size_t width = img.width();
	size_t height = img.height();

	unsigned char *image_ptr = img.data();

	unsigned int csize = 256;
	unsigned int ncells = img.height() * img.width() / csize + img.height() * img.width() % csize == 0 ? 1 : 0;

	int r[256] = {0};
	int g[256] = {0};
	int b[256] = {0};
	// Create OpenCL buffer visible to the OpenCl runtime
	cl_mem in_device_object = clCreateBuffer(_workers[idx].context_id, CL_MEM_READ_ONLY, sizeof(unsigned char) * height * width * 3, NULL, &err);
	cl_error(err, "Failed to create in memory buffer at device\n");
	cl_mem r_in_out = clCreateBuffer(_workers[idx].context_id, CL_MEM_READ_WRITE, sizeof(int) * 256, NULL, &err);
	cl_error(err, "Failed to create r out memory buffer at device\n");
	cl_mem g_in_out = clCreateBuffer(_workers[idx].context_id, CL_MEM_READ_WRITE, sizeof(int) * 256, NULL, &err);
	cl_error(err, "Failed to create g out memory buffer at device\n");
	cl_mem b_in_out = clCreateBuffer(_workers[idx].context_id, CL_MEM_READ_WRITE, sizeof(int) * 256, NULL, &err);
	cl_error(err, "Failed to create b out memory buffer at device\n");

	// Write date into the memory object
	err = clEnqueueWriteBuffer(_workers[idx].cmd_queue, in_device_object, CL_TRUE, 0, sizeof(unsigned char) * height * width * 3,
							   image_ptr, 0, NULL, NULL);
	err = clEnqueueWriteBuffer(_workers[idx].cmd_queue, r_in_out, CL_TRUE, 0, sizeof(int) * 256,
							   r, 0, NULL, NULL);
	err = clEnqueueWriteBuffer(_workers[idx].cmd_queue, g_in_out, CL_TRUE, 0, sizeof(int) * 256,
							   g, 0, NULL, NULL);
	err = clEnqueueWriteBuffer(_workers[idx].cmd_queue, b_in_out, CL_TRUE, 0, sizeof(int) * 256,
							   b, 0, NULL, NULL);
	cl_error(err, "Failed to enqueue a write command\n");
	for (unsigned int i = lo; i < hi; i++)
	{
		// img
		err = clSetKernelArg(_workers[idx].kernel, 0, sizeof(cl_mem), &in_device_object);
		cl_error(err, "Failed to set argument 0\n");

		// r, g, b
		err = clSetKernelArg(_workers[idx].kernel, 1, sizeof(cl_mem), &r_in_out);
		cl_error(err, "Failed to set argument 1\n");
		err = clSetKernelArg(_workers[idx].kernel, 2, sizeof(cl_mem), &g_in_out);
		cl_error(err, "Failed to set argument 2\n");
		err = clSetKernelArg(_workers[idx].kernel, 3, sizeof(cl_mem), &b_in_out);
		cl_error(err, "Failed to set argument 3\n");

		// rpart, gpart, bpart local memory (256 per wg)
		err = clSetKernelArg(_workers[idx].kernel, 4, 256 * sizeof(unsigned int), NULL);
		cl_error(err, "Failed to set argument 4\n");
		err = clSetKernelArg(_workers[idx].kernel, 5, 256 * sizeof(unsigned int), NULL);
		cl_error(err, "Failed to set argument 5\n");
		err = clSetKernelArg(_workers[idx].kernel, 6, 256 * sizeof(unsigned int), NULL);
		cl_error(err, "Failed to set argument 6\n");

		// cols, rows
		err = clSetKernelArg(_workers[idx].kernel, 7, sizeof(unsigned int), &width);
		cl_error(err, "Failed to set argument 7\n");
		err = clSetKernelArg(_workers[idx].kernel, 8, sizeof(unsigned int), &height);
		cl_error(err, "Failed to set argument 8\n");

		// Launch Kernel
		cl_event event;
		size_t local_size[1] = {csize};

		// round up to nearest multiple of csize
		size_t global_size[1] = {height * width + csize - height * width % csize};
		err = clEnqueueNDRangeKernel(_workers[idx].cmd_queue, _workers[idx].kernel, 1, NULL, global_size, local_size, 0, NULL, &event);
		cl_error(err, "Failed to launch kernel to the device\n");

		err = clEnqueueReadBuffer(_workers[idx].cmd_queue, r_in_out, CL_TRUE, 0, sizeof(int) * 256, r, 0, NULL, NULL);
		cl_error(err, "Failed to enqueue  R a read command\n");
		err = clEnqueueReadBuffer(_workers[idx].cmd_queue, g_in_out, CL_TRUE, 0, sizeof(int) * 256, g, 0, NULL, NULL);
		cl_error(err, "Failed to enqueue G a read command\n");
		err = clEnqueueReadBuffer(_workers[idx].cmd_queue, b_in_out, CL_TRUE, 0, sizeof(int) * 256, b, 0, NULL, NULL);
		cl_error(err, "Failed to enqueue B a read command\n");

		// display measurements

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
		size_t r_size;
		err = clGetMemObjectInfo(r_in_out, CL_MEM_SIZE, sizeof(r_size), &r_size, NULL);
		size_t g_size;
		err = clGetMemObjectInfo(g_in_out, CL_MEM_SIZE, sizeof(g_size), &g_size, NULL);
		size_t b_size;
		err = clGetMemObjectInfo(b_in_out, CL_MEM_SIZE, sizeof(b_size), &b_size, NULL);
		double dev_global_mem = in_size + r_size + g_size + b_size;
		double dev_local_mem = 256 * sizeof(unsigned int) * img.spectrum() * csize;
		// bandwidth (DtoH, HtoD)
		double dtoh_bw = (r_size + g_size + b_size) / (kernel_nano / 1000000000.0);
		double htod_bw = (in_size + r_size + g_size + b_size) / (kernel_nano / 1000000000.0);
		// throughput (work per second)
		double throughput = 1000000000.0 / kernel_nano;

		measurement_info pm = {
			.kernel_time = kernel_nano / 1000000.0,
			.dtoh_bw = dtoh_bw / 1024.0,
			.htod_bw = htod_bw / 1024.0,
			.tasks_per_sec = throughput,
			.host_fp = host_mem / 1024.0,
			.device_global_fp = dev_global_mem / 1024.0,
			.device_local_fp = dev_local_mem / 1024.0};

		info += pm;

		if (i == hi - 1 && store)
		{

			int rmax = 0;
			int gmax = 0;
			int bmax = 0;
			float rh[256] = {0};
			float gh[256] = {0};
			float bh[256] = {0};
			for (int i = 0; i < 256; i++)
			{
				if (r[i] > rmax)
				{
					rmax = r[i];
				}
				if (g[i] > gmax)
				{
					gmax = g[i];
				}
				if (b[i] > bmax)
				{
					bmax = b[i];
				}
			}
			for (int i = 0; i < 256; i++)
			{
				rh[i] = rmax > 0 ? (float)r[i] / (float)rmax : 0;
				gh[i] = gmax > 0 ? (float)g[i] / (float)gmax : 0;
				bh[i] = bmax > 0 ? (float)b[i] / (float)bmax : 0;
			}
			Histogram hist_r(rh), hist_g(gh), hist_b(bh);

			unsigned int width = 800, height = 600;
			CImg<unsigned char> canvas(width, height, 1, 3, 255);

			unsigned char red[] = {255, 0, 0};
			hist_r.display(canvas, width, height, red);

			unsigned char green[] = {0, 255, 0};
			hist_g.display(canvas, width, height, green);

			unsigned char blue[] = {0, 0, 255};
			hist_b.display(canvas, width, height, blue);

			std::ostringstream os;
			os << "dev" << idx << ".png";
			canvas.save(os.str().c_str());
		}
	}
	auto prog_end = std::chrono::steady_clock().now();

	// execution time of the whole program in one device
	double total_nano = std::chrono::duration_cast<std::chrono::nanoseconds>(prog_end - prog_ini).count();

	info /= (hi - lo);
	info.total_time = total_nano / 1000000.0;

	// release all objects
	clReleaseMemObject(in_device_object);
	clReleaseMemObject(r_in_out);
	clReleaseMemObject(g_in_out);
	clReleaseMemObject(b_in_out);
}
