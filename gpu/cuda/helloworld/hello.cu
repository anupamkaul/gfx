#include <stdio.h>

// a function that executes on GPU

// the qualified __global__ tells the compiler the
// function will be called from the CPU and will
// execute on the GPU. This is a kernel function

__global__ void helloFromGPU(void)
{
    printf("Hello World from GPU!\n") ;
}

// a simple function that executes on CPU
int main(void)
{
    printf("Hello World from CPU!\n\n") ;

    // triple angle brackets: call from host thread to code on device
    // params in brackets are exec configs: how many threads will run (SIMD or SIMT)

    // invoke 10 GPU threads to invoke this kernel function
    printf("Invoke 10 GPU threads:\n") ;
    helloFromGPU <<<1, 10>>>() ;

    // invoke 15 GPU threads to invoke this kernel function
    printf("Invoke 15 GPU threads:\n") ;
    helloFromGPU <<<1, 15>>>() ;

    // invoke 100 GPU threads to invoke this kernel function
    printf("Invoke 100 GPU threads:\n") ;
    helloFromGPU <<<1, 100>>>() ;

    // invoke 1000 GPU threads to invoke this kernel function
    printf("Invoke 1000 GPU threads:\n") ;
    helloFromGPU <<<1, 1000>>>() ;

    // invoke 10,000 GPU threads
    printf("Invoke 10,000 GPU threads:\n") ;
    helloFromGPU <<<1, 10000>>>() ; // doesn't work, check by commenting prev block

    cudaDeviceReset() ;
    return 0 ;
}

// A kernel is executed by an array of threads and all threads run the same code. Params 
// here are exec configs, specifies how many threads will execute on kernel. Here we run
// 10 GPU threads (can run thousands easily : GPU threads are light-weight compared to CPU)

/* ***

A typical CUDA program structure consists of 5 main steps:
1. Allocate GPU memories
2. Copy data from CPU memory to GPU memory
3. Invoke the CUDA kernel to perform program-specific computation
4. Copy data back from GPU memory to CPU memory
5. Destroy GPU memories

  *** */
