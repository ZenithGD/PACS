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
    // number of experiments
    unsigned int reps;
};

Arguments parse_args(int argc, char **argv)
{

    if (argc < 4)
    {
        std::cerr << "Usage: main <image_path> <N> <step>" << std::endl;
        exit(1);
    }

    // get kernel arg
    Arguments args;
    args.image_path = std::string(argv[1]);
    args.repl = std::stoul(argv[2]);
    args.step = std::stoul(argv[3]);
    args.reps = std::stoul(argv[4]);

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
        default:
            return kernel_fn<NaiveHist>;
    }
}

void run_experiment(const Arguments& args, CImg<unsigned char>& img, std::set<unsigned int> selection = {})
{

    DynamicScheduler sched(
        worker_setup,
        args.step,
        selection);

    double dyn_avg = 0.0;
    std::vector<measurement_info> iv_avg(sched.get_workers().size());

    for ( unsigned int i = 0; i < args.reps; i++ ) {
        auto prog_ini = std::chrono::steady_clock().now();
        // set display to true to store a result from each device
        auto iv = sched.run(img, args.repl, false);
        auto prog_end = std::chrono::steady_clock().now();
        // execution time of the whole program
        double total_nano = std::chrono::duration_cast<std::chrono::nanoseconds>(prog_end - prog_ini).count();
        dyn_avg += total_nano / 1e6;
        std::cout << "total time (ms):" << total_nano / 1e6 << std::endl;
        
        for ( unsigned int j = 0; j < iv.size(); j++ ) {
            iv_avg[j] += iv[j];
        }
    }
    dyn_avg /= args.reps;
    for ( unsigned int j = 0; j < iv_avg.size(); j++ ) {
        iv_avg[j] /= args.reps;

        std::cout << "Device " << sched.get_workers()[j]->get_name() << std::endl;
        std::cout << iv_avg[j] << std::endl;
    }

    for ( unsigned int j = 0; j < iv_avg.size(); j++ ) {
        // imbalance
        double imb = (dyn_avg - iv_avg[j].total_time) / dyn_avg;
        std::cout << "Imbalance " << sched.get_workers()[j]->get_name() << ": " << imb << std::endl;
    }
}

int main(int argc, char **argv)
{

    Arguments args = parse_args(argc, argv);
    CImg<unsigned char> img(args.image_path.c_str());

    std::vector<std::vector<double>> exec_info;

    // both
    run_experiment(args, img);

    // cpu only
    run_experiment(args, img, {0});

    // gpu only
    run_experiment(args, img, {1});
}