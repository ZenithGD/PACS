add_executable(main-static-naive
    main-static-naive.cpp
)

add_executable(main-dyn
    main-dyn.cpp
)

add_library(schedule
    schedulers/scheduler.cpp
    schedulers/static_scheduler.cpp
    schedulers/dyn_scheduler.cpp

    workers/hist_naive_worker.cpp
    workers/rot_naive_worker.cpp

    utils/clutils.cpp
    utils/fileutils.cpp
    utils/measurement_info.cpp
)

# schedule library -----------------------------------------
target_link_libraries(schedule
    PRIVATE ${OpenCL_LIBRARIES}
    PRIVATE ${JPEG_LIBRARIES}
    PRIVATE ${X11_LIBRARIES})

target_include_directories(schedule
    PRIVATE ${PROJECT_SOURCE_DIR}/src
    PRIVATE ${PROJECT_SOURCE_DIR}/CImg
    PRIVATE ${JPEG_INCLUDE_DIRS}
    PRIVATE ${X11_INCLUDE_DIR}
    PRIVATE ${OpenCL_INCLUDE_DIRS})

# Executables -----------------------------------------
target_link_libraries(main-static-naive
    PRIVATE ${OpenCL_LIBRARIES}
    PRIVATE ${JPEG_LIBRARIES}
    PRIVATE ${X11_LIBRARIES}
    PRIVATE schedule)

target_include_directories(main-static-naive
    PRIVATE ${PROJECT_SOURCE_DIR}/src
    PRIVATE ${PROJECT_SOURCE_DIR}/CImg
    PRIVATE ${JPEG_INCLUDE_DIRS}
    PRIVATE ${X11_INCLUDE_DIR}
    PRIVATE ${OpenCL_INCLUDE_DIRS})

target_link_libraries(main-dyn
    PRIVATE ${OpenCL_LIBRARIES}
    PRIVATE ${JPEG_LIBRARIES}
    PRIVATE ${X11_LIBRARIES}
    PRIVATE schedule)

target_include_directories(main-dyn
    PRIVATE ${PROJECT_SOURCE_DIR}/src
    PRIVATE ${PROJECT_SOURCE_DIR}/CImg
    PRIVATE ${JPEG_INCLUDE_DIRS}
    PRIVATE ${X11_INCLUDE_DIR}
    PRIVATE ${OpenCL_INCLUDE_DIRS})

install(
    TARGETS 
        main-static-naive
        main-dyn
    DESTINATION 
        bin)
