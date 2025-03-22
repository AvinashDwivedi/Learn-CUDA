.PHONY: 01 01_obj 02 03 01_execute 01_obj_exe_run clean

GCC = gcc 
NVCC = nvcc 
CUDA_FLAGS = -arch=sm_86

01: 01.c
	@$(GCC) -o 01 01.c

02:
	@$(GCC) -o 02 02.c

03:
	@$(NVCC) $(CUDA_FLAGS) -o 03_cu 03.cu

01_obj:
	@$(GCC) -c 01.c -o 01.o

01_execute: 01
	@./01

01_obj_exe_run: 01_obj
	@$(GCC) 01.o -o 01
	@./01

clean:
	@rm -f 01 01.o 03_cu