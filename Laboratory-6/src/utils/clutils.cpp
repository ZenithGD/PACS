#include "clutils.hpp"

void cl_error(cl_int code, const char *string) {
  if (code != CL_SUCCESS)
  {
    std::cout << code << " - " << string << std::endl;
    
    throw std::runtime_error("CL Error!");
  }
}