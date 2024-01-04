#pragma OPENCL EXTENSION cl_khr_global_int32_base_atomics: enable
#pragma OPENCL EXTENSION cl_khr_global_int32_extended_atomics: enable
#pragma OPENCL EXTENSION cl_khr_local_int32_base_atomics: enable
#pragma OPENCL EXTENSION cl_khr_local_int32_extended_atomics: enable


// Updated kernel to work with 3 channels separately
__kernel void hist_tile(
  __global uchar *img,
  __global int* r,
  __global int* g,
  __global int* b,
  __local  int* rpart,
  __local  int* gpart,
  __local  int* bpart,
  const unsigned int cols,
  const unsigned int rows){

    // image pixel and channel indices
    int idx = get_global_id(0);
    // image tile indices
    int gidx = get_group_id(0);
    int splits = get_num_groups(0);

    // histogram index to initialize
    int li = get_local_id(0);

    // initialize local histogram part
    if ( li < 256 ) {
        rpart[li] = 0;
        gpart[li] = 0;
        bpart[li] = 0;
    }

    // wait for initialization at local histograms
    work_group_barrier(CLK_LOCAL_MEM_FENCE);

    if ( idx < rows * cols ) {
        uchar ir = img[idx ];
        uchar ig = img[rows * cols + idx ];
        uchar ib = img[rows * cols * 2 + idx ];
        
        atomic_add(&rpart[ir], 1);
        atomic_add(&gpart[ig], 1);
        atomic_add(&bpart[ib], 1);
    }

    // wait for workitems to add into the local histogram
    work_group_barrier(CLK_LOCAL_MEM_FENCE);

    // add to global memory (reduces atomic access clashes)
    if ( li < 256 ) {
        atomic_add(&r[li], rpart[li]);
        atomic_add(&g[li], gpart[li]);
        atomic_add(&b[li], bpart[li]);
    }
}