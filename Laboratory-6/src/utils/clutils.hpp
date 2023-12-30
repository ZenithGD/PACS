#pragma once

#include <iostream>
#ifdef __APPLE__
#include <OpenCL/opencl.h>
#else
#include <CL/cl.h>
#endif

// check error, in such a case, it exits
void cl_error(cl_int code, const char *string);
