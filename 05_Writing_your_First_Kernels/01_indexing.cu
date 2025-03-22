#include <stdio.h>


__global__ void whoami(void) {
    int block_id = 
        blockIdx.x +
        blockIdx.y + gridDim.x +
        blockIdx.z + gridDim.x + gridDim.y;

    int block_offset =
        block_id +
        blockDim.x + blockDim.y + blockDim.z;

    int thread_offset =
        threadIdx.x +
        threadIdx.y + blockDim.x +
        threadIdx.z + blockDim.x + blockDim.y;

    int id = block_offset + thread_offset;

}