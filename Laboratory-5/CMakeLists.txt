cmake_minimum_required(VERSION 3.16)

project(opencl_cmake VERSION 0.0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED 17)
SET(CMAKE_INSTALL_PREFIX dist)

find_package(OpenCL REQUIRED)
find_package(X11 REQUIRED)
find_package(JPEG REQUIRED)

message(STATUS "OpenCL_FOUND = ${OpenCL_FOUND}")
message(STATUS "OpenCL_INCLUDE_DIRS = ${OpenCL_INCLUDE_DIRS}")
message(STATUS "OpenCL_LIBRARIES = ${OpenCL_LIBRARIES}")

message(STATUS "X11_FOUND = ${X11_FOUND}")
message(STATUS "X11_INCLUDE_DIR = ${X11_INCLUDE_DIR}")
message(STATUS "X11_LIBRARIES = ${X11_LIBRARIES}")

message(STATUS "JPEG_FOUND = ${JPEG_FOUND}")
message(STATUS "JPEG_INCLUDE_DIRS = ${JPEG_INCLUDE_DIRS}")
message(STATUS "JPEG_LIBRARIES = ${JPEG_LIBRARIES}")

#add_subdirectory(histogram)
add_subdirectory(image-flip)
#add_subdirectory(image-rot)
#add_subdirectory(examples)

if (CMAKE_GENERATOR STREQUAL "Ninja")
  if (CMAKE_CXX_COMPILER_ID MATCHES "Clang")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fcolor-diagnostics")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fcolor-diagnostics")
  elseif (CMAKE_CXX_COMPILER_ID MATCHES "GNU")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fdiagnostics-color=always")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fdiagnostics-color=always")
  endif()
endif()