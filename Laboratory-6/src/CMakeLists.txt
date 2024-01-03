add_executable(main
    main.cpp
    schedulers/scheduler.cpp
    schedulers/static_scheduler.cpp

    utils/clutils.cpp
    utils/fileutils.cpp
    utils/measurement_info.cpp
)

# hist with two arrays
target_link_libraries(main
    PRIVATE ${OpenCL_LIBRARIES}
    PRIVATE ${JPEG_LIBRARIES}
    PRIVATE ${X11_LIBRARIES})

target_include_directories(main
    PRIVATE ${PROJECT_SOURCE_DIR}/src
    PRIVATE ${PROJECT_SOURCE_DIR}/CImg
    PRIVATE ${JPEG_INCLUDE_DIRS}
    PRIVATE ${X11_INCLUDE_DIR}
    PRIVATE ${OpenCL_INCLUDE_DIRS})

install(
    TARGETS 
        main
    DESTINATION 
        bin)
