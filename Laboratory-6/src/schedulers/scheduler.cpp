#include "scheduler.hpp"

#include <algorithm>

#include <utils/clutils.hpp>
#include <utils/fileutils.hpp>

#include <workers/workers.hpp>
#include <workers/hist_naive_worker.hpp>

Scheduler::Scheduler(const std::string &kernel_path, const std::string &kernel_name,
                     const WorkerSetupFn &_wfn)
    : Scheduler(kernel_path, kernel_name, _wfn, {}) {}

Scheduler::Scheduler(const std::string &kernel_path, const std::string &kernel_name,
                     const WorkerSetupFn &_wfn, std::set<unsigned int> selection)
{
    // TODO: allow passing different tasks
    const cl_uint num_platforms_ids = 10;            // max of allocatable platforms
    cl_platform_id platforms_ids[num_platforms_ids]; // array of platforms
    cl_uint n_platforms;                             // effective number of platforms in use

    const cl_uint num_devices_ids = 10;                           // max of allocatable devices
    cl_device_id devices_ids[num_platforms_ids][num_devices_ids]; // array of devices
    cl_uint n_devices[num_platforms_ids];                         // effective number of devices in use for each platform

    cl_device_id device_id; // compute device id

    // 1. Scan the available platforms:
    int err = clGetPlatformIDs(num_platforms_ids, platforms_ids, &n_platforms);
    cl_error(err, "Error: Failed to Scan for Platforms IDs");
    printf("Number of available platforms: %d\n\n", n_platforms);

    // 2. Setup context and queues per device
    for (int i = 0; i < n_platforms; i++)
    {
        char name_buffer[100];
        err = clGetDeviceIDs(platforms_ids[i], CL_DEVICE_TYPE_ALL, num_devices_ids, devices_ids[i], &(n_devices[i]));
        cl_error(err, "Error: Failed to Scan for Devices IDs");
        printf("\t[%d]-Platform. Number of available devices: %d\n", i, n_devices[i]);

        // 2.1. Create a context, with all the devices from the platform
        cl_context_properties properties[] = {CL_CONTEXT_PLATFORM, (cl_context_properties)platforms_ids[i], 0};
        cl_context context = clCreateContext(properties, n_devices[i], devices_ids[i], NULL, NULL, &err);
        cl_error(err, "Failed to create a compute context\n");
        std::cout << "Created context with id " << context << " for platform " << i << std::endl;
        _contexts.push_back(context);

        for (int j = 0; j < n_devices[i]; j++)
        {
            if (!selection.empty() && selection.find(i * n_platforms + j) == selection.end())
            {
                continue;
            }

            err = clGetDeviceInfo(devices_ids[i][j], CL_DEVICE_NAME, sizeof(name_buffer), &name_buffer, NULL);
            cl_error(err, "clGetDeviceInfo: Getting device name");
            printf("\t\t [%d]-Platform [%d]-Device CL_DEVICE_NAME: %s\n", i, j, name_buffer);
            // create a new command queue for each device
            cl_command_queue command_queue;

            // 2.2. Create a command queue. Enable profiling for runtime throughput estimation
            cl_command_queue_properties proprt[] = {CL_QUEUE_PROPERTIES, CL_QUEUE_PROFILING_ENABLE, 0};
            command_queue = clCreateCommandQueueWithProperties(context, devices_ids[i][j], proprt, &err);
            cl_error(err, "Failed to create a command queue\n");
            std::cout << "Created queue with id " << command_queue << " for platform & device [" << i << " & " << j << "]" << std::endl;
            _queues.push_back(command_queue);

            // 2.3 Create kernel for each device

            // build kernel for each device
            char *source = read_source(kernel_path);

            const char *src_arr[1] = {source};

            const size_t lengths[1] = {strlen(source)};

            // create program from buffer
            cl_program program = clCreateProgramWithSource(context, 1, src_arr, lengths, &err);
            cl_error(err, "Failed to create program with source\n");
            delete source;

            // Build the executable and check errors
            err = clBuildProgram(program, 0, NULL, "-cl-std=CL2.0", NULL, NULL);
            char buffer[2048];
            if (err != CL_SUCCESS)
            {
                size_t len;
                printf("Error: Some error at building process.\n");
                clGetProgramBuildInfo(program, devices_ids[i][j], CL_PROGRAM_BUILD_LOG, sizeof(buffer), &buffer, NULL);
                printf("%s\n", buffer);
                exit(-1);
            }
            clGetProgramBuildInfo(program, devices_ids[i][j], CL_PROGRAM_BUILD_LOG, sizeof(buffer), &buffer, NULL);
            printf("Info: %s\n", buffer);

            cl_kernel kernel = clCreateKernel(program, kernel_name.c_str(), &err);
            cl_error(err, "Failed to create kernel from the program\n");

            // 2.4 Add worker struct with all info
            std::string tname(name_buffer);

            std::replace(tname.begin(), tname.end(), ' ', '_');
            auto w = _wfn(i * n_platforms + j)(
                tname,
                platforms_ids[i],
                devices_ids[i][j],
                context,
                command_queue,
                kernel,
                program);

            _workers.push_back(w);
        }
    }
}

Scheduler::~Scheduler()
{
    int err;

    // free command queues
    for (auto &qid : _queues)
    {
        std::cout << "Releasing queue with ID " << qid << std::endl;
        err = clReleaseCommandQueue(qid);
        cl_error(err, "Failed to release queue resources");
    }

    // free context resources
    for (auto &cid : _contexts)
    {
        std::cout << "Releasing context with ID " << cid << std::endl;
        err = clReleaseContext(cid);
        cl_error(err, "Failed to release context resources");
    }
}