add_executable(hist
    hist_environ.cpp)

add_executable(hist_tile
    hist_tile_env.cpp)

# hist with two arrays
target_link_libraries(hist 
    PRIVATE ${OpenCL_LIBRARIES}
    PRIVATE ${JPEG_LIBRARIES}
    PRIVATE ${X11_LIBRARIES})

target_include_directories(hist 
    PRIVATE ${PROJECT_SOURCE_DIR}/CImg
    PRIVATE ${JPEG_INCLUDE_DIRS}
    PRIVATE ${X11_INCLUDE_DIR}
    PRIVATE ${OpenCL_INCLUDE_DIRS})

# hist in place
target_link_libraries(hist_tile
    PRIVATE ${OpenCL_LIBRARIES}
    PRIVATE ${JPEG_LIBRARIES}
    PRIVATE ${X11_LIBRARIES})

target_include_directories(hist_tile
    PRIVATE ${PROJECT_SOURCE_DIR}/CImg
    PRIVATE ${JPEG_INCLUDE_DIRS}
    PRIVATE ${X11_INCLUDE_DIR}
    PRIVATE ${OpenCL_INCLUDE_DIRS})

install(
    TARGETS 
        hist
        hist_tile
    DESTINATION 
        bin)
