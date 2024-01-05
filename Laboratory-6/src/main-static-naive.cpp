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
#include <functional>

#include <schedulers/static_scheduler.hpp>
#include <workers/hist_naive_worker.hpp>

struct Arguments {
    std::string image_path;
    unsigned int repl;
    // proportion that goes into the first device (between 0 and 1)
    double prop;
    std::string kernel_path, kernel_name;
};

Arguments parse_args(int argc, char** argv) {

    if ( argc < 3 ) {
        std::cerr << "Usage: main <image_path> (N)" << std::endl;
        exit(1);
    }

    // get kernel arg
    Arguments args;
    args.image_path = std::string(argv[1]);
    args.repl = std::stoul(argv[2]);

    std::cout << "[image_path]> " << args.image_path << " x " << args.repl << ::endl;

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

int main(int argc, char** argv) {

    Arguments args = parse_args(argc, argv);
    CImg<unsigned char> img(args.image_path.c_str());

    const unsigned int N = 20;
    std::vector<std::vector<double>> exec_info;

    std::vector<std::string> names;

    // perform experiment with different balancing proportions
    for ( int i = 0; i <= N; i++ ) {    
        double pr = (double)i / (double)N;
        std::vector<double> dist = { pr, 1 - pr };
        StaticScheduler sched(
            worker_setup, 
            dist,
            {});

        if ( i == 0 ) {
            for ( auto& w : sched.get_workers() ) {
                names.push_back(w->get_name());
            }
        }

	    auto prog_ini = std::chrono::steady_clock().now();
        auto iv = sched.run(img, args.repl, false);
	    auto prog_end = std::chrono::steady_clock().now();
        // execution time of the whole program
	    double total_nano = std::chrono::duration_cast<std::chrono::nanoseconds>(prog_end - prog_ini).count();

        std::vector<double> info;

        for ( int j = 0; j < iv.size(); j++ ) {
            info.push_back(iv[j].total_time);
        }

        info.push_back(total_nano / 1000000.0);
        exec_info.push_back(info);

        std::cout << "done " << pr << std::endl;
    }

    // write csv to file
    std::ostringstream os;
    os << "static-" << args.repl << ".csv";
    std::ofstream out(os.str());
    if ( !out.is_open() ) {
        std::cout << "Can't open output csv!" << std::endl;
        exit(1);
    }

    out << "gpu_prop;";
    for ( int i = 0; i < exec_info[0].size() - 1; i++ ) {
        out << names[i] << ";";
    }
    out <<"total" << std::endl;
    int i = 0;
    for ( auto& info : exec_info ) {
        out << (double)i++ / (double)N << ";";
        for ( auto& time : info ) {
            out << time << ";";
        }
        out << std::endl;
    }

    out.close();
}