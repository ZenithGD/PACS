add_executable(conv
    conv.cpp)

# hist with two arrays
target_link_libraries(conv
    PRIVATE ${OpenCL_LIBRARIES}
    PRIVATE ${JPEG_LIBRARIES}
    PRIVATE ${X11_LIBRARIES})

target_include_directories(conv
    PRIVATE ${PROJECT_SOURCE_DIR}/CImg
    PRIVATE ${JPEG_INCLUDE_DIRS}
    PRIVATE ${X11_INCLUDE_DIR}
    PRIVATE ${OpenCL_INCLUDE_DIRS})

install(
    TARGETS 
        conv
    DESTINATION 
        bin)
