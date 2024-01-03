#include "measurement_info.hpp"

/**
 * Print measurement info to an output stream
*/
std::ostream& operator<<(std::ostream& os, const measurement_info& info) {
    os << std::setprecision(4) << "Program execution time : " << info.total_time << " milliseconds." << std::endl;
    os << std::setprecision(4) << "Kernel execution time: " << info.kernel_time << " milliseconds." << std::endl;
    os << "Bandwidth: " << std::endl;
    os << std::setprecision(8) << "  Host to device: " << info.htod_bw << " KiB/s." << std::endl;
    os << std::setprecision(8) << "  Device to host: " << info.dtoh_bw << " KiB/s." << std::endl;
    os << std::setprecision(4) << "Throughput: " << info.tasks_per_sec << " tasks/s" << std::endl;
    os << "Memory footprint " << std::endl;
    os << std::setprecision(8) << "  Host: " << info.host_fp << " KiB." << std::endl;
    os << "  Device:" << std::endl;
    os << std::setprecision(8) << "    Global: " << info.device_global_fp << " KiB." << std::endl;
    os << std::setprecision(8) << "    Local: " << info.device_local_fp << " KiB.";

    return os;
}