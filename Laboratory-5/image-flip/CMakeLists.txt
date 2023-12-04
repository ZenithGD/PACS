add_executable(flip
    flip_environ.cpp)

add_executable(flip_inplace
    flip_inplace_env.cpp)

# flip with two arrays
target_link_libraries(flip 
    PRIVATE ${OpenCL_LIBRARIES}
    PRIVATE ${JPEG_LIBRARIES}
    PRIVATE ${X11_LIBRARIES})

target_include_directories(flip 
    PRIVATE ${PROJECT_SOURCE_DIR}/CImg
    PRIVATE ${JPEG_INCLUDE_DIRS}
    PRIVATE ${X11_INCLUDE_DIR}
    PRIVATE ${OpenCL_INCLUDE_DIRS})

# flip in place
target_link_libraries(flip_inplace
    PRIVATE ${OpenCL_LIBRARIES}
    PRIVATE ${JPEG_LIBRARIES}
    PRIVATE ${X11_LIBRARIES})

target_include_directories(flip_inplace
    PRIVATE ${PROJECT_SOURCE_DIR}/CImg
    PRIVATE ${JPEG_INCLUDE_DIRS}
    PRIVATE ${X11_INCLUDE_DIR}
    PRIVATE ${OpenCL_INCLUDE_DIRS})

install(
    TARGETS 
        flip
        flip_inplace
    DESTINATION 
        bin)
