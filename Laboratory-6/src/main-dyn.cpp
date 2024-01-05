#define cimg_use_jpeg
#ifdef __APPLE__
#include <OpenCL/opencl.h>
#else
#include <CL/cl.h>
#endif
#include "CImg.h"

#include <chrono>

using namespace cimg_library;
using namespace std;

#include <iostream>
#include <fstream>

#include <schedulers/dyn_scheduler.hpp>
#include <workers/hist_naive_worker.hpp>

struct Arguments
{
    std::string image_path;
    unsigned int repl;
    // number of iterations per split.
    unsigned int step;
    std::string kernel_path, kernel_name;
};

Arguments parse_args(int argc, char **argv)
{

    if (argc < 6)
    {
        std::cerr << "Usage: main <kernel_path> <kernel_name> <image_path> <N> <step>" << std::endl;
        exit(1);
    }

    // get kernel arg
    Arguments args;
    args.kernel_path = std::string(argv[1]);
    args.kernel_name = std::string(argv[2]);
    args.image_path = std::string(argv[3]);
    args.repl = std::stoul(argv[4]);
    args.step = std::stoul(argv[5]);

    std::cout << "[kernel_path]> " << args.kernel_path << std::endl;
    std::cout << "[kernel_name]> " << args.kernel_name << std::endl;
    std::cout << "[image_path]>  " << args.image_path << " x " << args.repl << ::endl;
    std::cout << "[step]>        " << args.step << std::endl;

    return args;
}

// Redundant function but shows the potential of our implementation
// to set a different kernel per device.
WorkerFn worker_setup(unsigned int idx) {
    switch ( idx ) {
        case 0:
            return kernel_fn<NaiveHist>;
        case 1:
            return kernel_fn<NaiveHist>;
    }
}

int main(int argc, char **argv)
{

    Arguments args = parse_args(argc, argv);
    CImg<unsigned char> img(args.image_path.c_str());

    std::vector<std::vector<double>> exec_info;

    DynamicScheduler sched(
        args.kernel_path, args.kernel_name,
        std::function(worker_setup),
        args.step);

    auto prog_ini = std::chrono::steady_clock().now();
    auto iv = sched.run(img, args.repl, false);
    auto prog_end = std::chrono::steady_clock().now();
    // execution time of the whole program
    double total_nano = std::chrono::duration_cast<std::chrono::nanoseconds>(prog_end - prog_ini).count();

    std::cout << "total time (ms):" << total_nano / 1e6 << std::endl;
}