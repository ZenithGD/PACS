#pragma once

#include <iostream>
#include <iomanip>

struct measurement_info {

    // time in milliseconds
    double total_time = 0.0;
    double kernel_time = 0.0;
    // bandwidth (DtoH, HtoD) (KB/s)
    double dtoh_bw = 0.0, htod_bw = 0.0;
    // throughput (work per second)
    double tasks_per_sec = 0.0;
    // memory footprint (KB)
    double host_fp = 0.0, device_global_fp = 0.0, device_local_fp = 0.0;

    double dtoh_time = 0.0, htod_time = 0.0;

    /**
     * Add into a measurement info in place
    */
    measurement_info& operator+=(const measurement_info& other) {
        this->total_time       += other.total_time;
        this->kernel_time      += other.kernel_time;
        this->dtoh_bw          += other.dtoh_bw;
        this->htod_bw          += other.htod_bw;
        this->tasks_per_sec    += other.tasks_per_sec;
        this->host_fp          += other.host_fp;
        this->device_global_fp += other.device_global_fp;
        this->device_local_fp  += other.device_local_fp;
        this->dtoh_time        += other.dtoh_time;
        this->htod_time        += other.htod_time;

        return *this;
    }

    /**
     * Divide by a scalar
    */
    measurement_info& operator/=(const double sc) {
        this->total_time       /= sc;
        this->kernel_time      /= sc;
        this->dtoh_bw          /= sc;
        this->htod_bw          /= sc;
        this->tasks_per_sec    /= sc;
        this->host_fp          /= sc;
        this->device_global_fp /= sc;
        this->device_local_fp  /= sc;
        this->dtoh_time        /= sc;
        this->htod_time        /= sc;
        
        return *this;
    }
};

/**
 * Print measurement info to an output stream
*/
std::ostream& operator<<(std::ostream& os, const measurement_info& info);