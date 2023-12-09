add_executable(rot
    rot_environ.cpp)

# rotate with two arrays
target_link_libraries(rot 
    PRIVATE ${OpenCL_LIBRARIES}
    PRIVATE ${JPEG_LIBRARIES}
    PRIVATE ${X11_LIBRARIES})

target_include_directories(rot 
    PRIVATE ${PROJECT_SOURCE_DIR}/CImg
    PRIVATE ${JPEG_INCLUDE_DIRS}
    PRIVATE ${X11_INCLUDE_DIR}
    PRIVATE ${OpenCL_INCLUDE_DIRS})

install(
    TARGETS 
        rot
    DESTINATION 
        bin)
