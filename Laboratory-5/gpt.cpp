#include <CL/cl.h>
#include <iostream>

int main() {
    cl_uint num_platforms;

    // Obtener el número de plataformas disponibles
    clGetPlatformIDs(0, nullptr, &num_platforms);

    if (num_platforms == 0) {
        std::cerr << "No se encontraron plataformas OpenCL." << std::endl;
        return 1;
    }

    // Obtener información sobre las plataformas
    cl_platform_id* platforms = new cl_platform_id[num_platforms];
    clGetPlatformIDs(num_platforms, platforms, nullptr);

    std::cout << "Plataformas OpenCL disponibles:" <<num_platforms <<std::endl;

    for (cl_uint i = 0; i < num_platforms; ++i) {
        // Obtener el tamaño del nombre de la plataforma
        size_t name_size;
        clGetPlatformInfo(platforms[i], CL_PLATFORM_NAME, 0, nullptr, &name_size);

        // Obtener el nombre de la plataforma
        char* platform_name = new char[name_size];
        clGetPlatformInfo(platforms[i], CL_PLATFORM_NAME, name_size, platform_name, nullptr);

        std::cout << "Plataforma " << i + 1 << ": " << platform_name << std::endl;

        delete[] platform_name;
    }

    delete[] platforms;

    return 0;
}
