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
#include <workers/rot_naive_worker.hpp>

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

int main(int argc, char **argv)
{

    Arguments args = parse_args(argc, argv);
    CImg<unsigned char> img(args.image_path.c_str());

    std::vector<std::vector<double>> exec_info;

    DynamicScheduler sched(
        worker_setup,
        args.step,
        {});

    auto prog_ini = std::chrono::steady_clock().now();

    // set display to true to store a result from each device
    auto iv = sched.run(img, args.repl, true);
    auto prog_end = std::chrono::steady_clock().now();
    // execution time of the whole program
    double total_nano = std::chrono::duration_cast<std::chrono::nanoseconds>(prog_end - prog_ini).count();

    for ( unsigned int i = 0; i < iv.size(); i++ ) {
        std::cout << iv[i] << std::endl;
    }

    std::cout << "total time (ms):" << total_nano / 1e6 << std::endl;

    // write csv to file
    std::ostringstream os;
    os << "dyn-distr-" << args.repl << "-" << args.step << ".csv";
    std::ofstream out(os.str());
    if ( !out.is_open() ) {
        std::cout << "Can't open output csv!" << std::endl;
        exit(1);
    }
    out << "imgs;";
    for ( int i = 0; i < sched.get_workers().size(); i++ ) {
        out << sched.get_workers()[i]->get_name() << ";";
    }
    out <<"total" << std::endl;
    int i = 0;
    for ( auto& snapshot : sched.get_dist_snapshots() ) {
        out << std::min(i++ * args.step, args.repl) << ";";
        for ( auto& p : snapshot ) {
            out << p << ";";
        }
        out << std::endl;
    }
}