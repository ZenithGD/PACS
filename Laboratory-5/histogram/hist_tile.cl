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
    int ch = get_global_id(1);

    // image tile indices
    int gidx = get_group_id(0);
    int splits = get_num_groups(0);

    // histogram index to initialize
    int li = get_local_id(0);

    // initialize local histogram part
    if ( li < 256 ) {
        if(ch == 0){
            rpart[li] = 0;
        } else if(ch == 1){
            gpart[li] = 0;
        } else {
            bpart[li] = 0;
        }
    }

    // wait for initialization at local histograms
    work_group_barrier(CLK_LOCAL_MEM_FENCE);

    if ( idx < rows * cols ) {
        uchar aux = img[rows * cols * ch + idx ];
        
        if(ch == 0){
            atomic_add(&rpart[aux], 1);
        } else if(ch == 1){
            atomic_add(&gpart[aux], 1);
        } else {
            atomic_add(&bpart[aux], 1);
        }
    }

    // wait for workitems to add into the local histogram
    work_group_barrier(CLK_LOCAL_MEM_FENCE);

    // add to global memory (reduces atomic access clashes)
    if ( li < 256 ) {
        if(ch == 0){
            atomic_add(&r[li], rpart[li]);
        } else if(ch == 1){
            atomic_add(&g[li], gpart[li]);
        } else {
            atomic_add(&b[li], bpart[li]);
        }
    }
}