include ../../common/make.config

CUDA_LIB =	-lcuda -lcudart
CUDA_FLAG = -arch sm_20

# ====================================================================================================100
#	END
# ====================================================================================================100

# ======================================================================================================================================================150
#	OPENCL
# ======================================================================================================================================================150

# ====================================================================================================100
#	NVIDIA OpenCL header/library [NVIDIA SDK]
# ====================================================================================================100

# OCL_DIR =/af14/lgs9a/Programs/NVIDIA/SDK
# OCL_INC_DIR = -I$(OCL_DIR)/OpenCL/common/inc
# OCL_LIB_DIR = -L$(OCL_DIR)/OpenCL/common/lib

# ====================================================================================================100
#	AMD OpenCL header/library [AMD SDK]
# ====================================================================================================100

# OCL_DIR = /af14/lgs9a/Programs/AMD/SDK
# OCL_INC_DIR = -I$(OCL_DIR)/include/ 
# OCL_LIB_DIR = -L$(OCL_DIR)/lib/x86/
# ifeq ($(shell uname -m), x86_64)
    # ifeq ($(shell if test -d $(OCL_DIR)/lib/x86_64/; then echo T; else echo F; fi), T)
#    	# OCL_LIB_DIR = -L$(OCL_DIR)/lib/x86_64/
    # endif
# endif

# ====================================================================================================100
#	END
# ====================================================================================================100

# ======================================================================================================================================================150
#	COMPILER
# ======================================================================================================================================================150

# ====================================================================================================100
#	ICC
# ====================================================================================================100

# C_C = icc
# OMP_FLAG = -openmp

# ====================================================================================================100
#	GCC
# ====================================================================================================100

C_C = gcc
# OMP_LIB = -lgomp
# OMP_FLAG = -fopenmp
# OCL_LIB = -lOpenCL

# ====================================================================================================100
#	NVCC
# ====================================================================================================100

#CUD_C = nvcc
# OMP_FLAG = 	-Xcompiler paste_one_here

# ====================================================================================================100
#	PGCC
# ====================================================================================================100

# C_C = pgcc
# OMP_FLAG = -mp
# ACC_FLAG = 	-ta=nvidia \
			# -Minfo \
			# -Mbounds

# ====================================================================================================100
#	END
# ====================================================================================================100

# ======================================================================================================================================================150
#	END
# ======================================================================================================================================================150

# ========================================================================================================================================================================================================200
#	EXECUTABLES (LINK OBJECTS TOGETHER INTO BINARY)
# ========================================================================================================================================================================================================200

#$(TESTNAME):	./sc_gpu.o sc_hip.o
#	$(HIPLD)	./sc_gpu.o sc_hip.o\
#			-lm \
#                      -o $(TESTNAME)

$(TESTNAME): streamcluster_hip.o streamcluster_cuda_cpu.o streamcluster_header.o
	$(HIPLD) $(CC_FLAGS) streamcluster_hip.o streamcluster_cuda_cpu.o streamcluster_header.o -o streamcluster -lm

# ========================================================================================================================================================================================================200
#	OBJECTS (COMPILE SOURCE FILES INTO OBJECTS)
# ========================================================================================================================================================================================================200

# ======================================================================================================================================================150
#	MAIN FUNCTION
# ======================================================================================================================================================150

#sc_gpu.o:	./streamcluster_cuda_cpu.cu streamcluster_hip.cu streamcluster_header.cu
#	$(HIPCC)  $(HIPCC_FLAGS)	$(KERNEL_DIM) ./streamcluster_cuda_cpu.cpp streamcluster_hip.cu \
#			-c \
#			-o ./sc_gpu.o \
#			-O3

%.o: %.cu  
	$(HIPCC) $(HIPCC_FLAGS) -c $<


# ======================================================================================================================================================150
#	END
# ======================================================================================================================================================150

# ========================================================================================================================================================================================================200
#	DELETE
# ========================================================================================================================================================================================================200

clean: 
	rm -f *.o *.txt $(TESTNAME)

# ========================================================================================================================================================================================================200
#	END
# ========================================================================================================================================================================================================200
