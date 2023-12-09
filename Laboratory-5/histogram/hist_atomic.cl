#pragma OPENCL EXTENSION cl_khr_global_int32_base_atomics: enable
#pragma OPENCL EXTENSION cl_khr_global_int32_extended_atomics: enable
#pragma OPENCL EXTENSION cl_khr_local_int32_base_atomics: enable
#pragma OPENCL EXTENSION cl_khr_local_int32_extended_atomics: enable

__kernel void hist_atomic(
  __global uchar *img,
  __global int* r,
  __global int* g,
  __global int* b,
  const unsigned int cols,
  const unsigned int fils){

    int i = get_global_id(0);
    int j = get_global_id(1);
    int k = get_global_id(2);

    uchar aux = img[fils * cols * k + i * cols + j ];
    if(k == 0){
        atomic_add(&r[aux], 1);
    } else if(k == 1){
        atomic_add(&g[aux], 1);
    } else {
        atomic_add(&b[aux], 1);
    }
}