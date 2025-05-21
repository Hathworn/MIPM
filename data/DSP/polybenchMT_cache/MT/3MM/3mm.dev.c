#include "3mm.h"
#include "../../common/cache_strategy/cache_wrapper.h"
#include "../../common/polybench.h"
#include "hthread_device.h"
#include <compiler/m3000.h>

__global__ void mm3_kernel1(int ni, int nj, int nk, int nl, int nm, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *E)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = ni * nj;
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    int start_idx = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_idx = (thread_id + 1) * elements_per_thread + (thread_id + 1 < remainder ? thread_id + 1 : remainder);

    for (int idx = start_idx; idx < end_idx; ++idx) {
        int i = idx / nj;
        int j = idx % nj;
        E[i * nj + j] = 0;
    }

    for (int k = 0; k < nk; ++k) {
        for (int idx = start_idx; idx < end_idx; ++idx) {
            int i = idx / nj;
            int j = idx % nj;
            if (i < ni && j < nj) {
                E[i * nj + j] += A[i * nk + k] * B[k * nj + j];
            }
        }
    }
}

__global__ void mm3_kernel2(int ni, int nj, int nk, int nl, int nm, DATA_TYPE *C, DATA_TYPE *D, DATA_TYPE *F)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = nj * nl;
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    int start_idx = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_idx = (thread_id + 1) * elements_per_thread + (thread_id + 1 < remainder ? thread_id + 1 : remainder);

    for (int idx = start_idx; idx < end_idx; ++idx) {
        int i = idx / nl;
        int j = idx % nl;
        F[i * nl + j] = 0;
    }

    for (int k = 0; k < nm; ++k) {
        for (int idx = start_idx; idx < end_idx; ++idx) {
            int i = idx / nl;
            int j = idx % nl;
            if (i < nj && j < nl) {
                F[i * nl + j] += C[i * nm + k] * D[k * nl + j];
            }
        }
    }
}

__global__ void mm3_kernel3(int ni, int nj, int nk, int nl, int nm, DATA_TYPE *E, DATA_TYPE *F, DATA_TYPE *G)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = ni * nl;
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    int start_idx = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_idx = (thread_id + 1) * elements_per_thread + (thread_id + 1 < remainder ? thread_id + 1 : remainder);

    for (int idx = start_idx; idx < end_idx; ++idx) {
        int i = idx / nl;
        int j = idx % nl;
        G[i * nl + j] = 0;
    }

    for (int k = 0; k < nj; ++k) {
        for (int idx = start_idx; idx < end_idx; ++idx) {
            int i = idx / nl;
            int j = idx % nl;
            if (i < ni && j < nl) {
                G[i * nl + j] += E[i * nj + k] * F[k * nl + j];
            }
        }
    }
}

#ifdef MINI_DATASET
__global__ void mm3_kernel1_cache(int ni, int nj, int nk, int nl, int nm, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *E)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = ni * nj;
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    int start_idx = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_idx = (thread_id + 1) * elements_per_thread + (thread_id + 1 < remainder ? thread_id + 1 : remainder);
    CACHEs_INIT(E, DATA_TYPE, E, 0, 14);
    CACHEs_INIT(B, DATA_TYPE, B, 0, 9);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 15);
    DATA_TYPE tmp_A, tmp_B, tmp_E;
    for (int idx = start_idx; idx < end_idx; ++idx) {
        int i = idx / nj;
        int j = idx % nj;
        CACHEs_WT(E, &E[i * nj + j], 0);
    }

    for (int k = 0; k < nk; ++k) {
        for (int idx = start_idx; idx < end_idx; ++idx) {
            int i = idx / nj;
            int j = idx % nj;
            if (i < ni && j < nj) {
                CACHEs_RD(E, &E[i * nj + j], tmp_E);
                CACHEs_RD(A, &A[i * nk + k], tmp_A);
                CACHEs_RD(B, &B[k * nj + j], tmp_B);
                tmp_E += tmp_A * tmp_B;
                CACHEs_WT(E, &E[i * nj + j], tmp_E);
            }
        }
    }
    CACHEs_FLUSH(E);
    CACHEs_INVALID(A);
    CACHEs_INVALID(B);
}

__global__ void mm3_kernel2_cache(int ni, int nj, int nk, int nl, int nm, DATA_TYPE *C, DATA_TYPE *D, DATA_TYPE *F)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = nj * nl;
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    int start_idx = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_idx = (thread_id + 1) * elements_per_thread + (thread_id + 1 < remainder ? thread_id + 1 : remainder);

    CACHEs_INIT(F, DATA_TYPE, F, 0, 14);
    CACHEs_INIT(D, DATA_TYPE, D, 0, 9);
    CACHEs_INIT(C, DATA_TYPE, C, 0, 15);
    DATA_TYPE tmp_C, tmp_D, tmp_F;
    for (int idx = start_idx; idx < end_idx; ++idx) {
        int i = idx / nl;
        int j = idx % nl;
        CACHEs_WT(F, &F[i * nl + j], 0);
    }

    for (int k = 0; k < nm; ++k) {
        for (int idx = start_idx; idx < end_idx; ++idx) {
            int i = idx / nl;
            int j = idx % nl;
            if (i < nj && j < nl) {
                CACHEs_RD(F, &F[i * nl + j], tmp_F);
                CACHEs_RD(C, &C[i * nm + k], tmp_C);
                CACHEs_RD(D, &D[k * nl + j], tmp_D);
                tmp_F += tmp_C * tmp_D;
                CACHEs_WT(F, &F[i * nl + j], tmp_F);
            }
        }
    }
    CACHEs_FLUSH(F);
    CACHEs_INVALID(C);
    CACHEs_INVALID(D);
}

__global__ void mm3_kernel3_cache(int ni, int nj, int nk, int nl, int nm, DATA_TYPE *E, DATA_TYPE *F, DATA_TYPE *G)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = ni * nl;
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    int start_idx = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_idx = (thread_id + 1) * elements_per_thread + (thread_id + 1 < remainder ? thread_id + 1 : remainder);

    CACHEs_INIT(G, DATA_TYPE, G, 0, 14);
    CACHEs_INIT(F, DATA_TYPE, F, 0, 9);
    CACHEs_INIT(E, DATA_TYPE, E, 0, 15);
    DATA_TYPE tmp_E, tmp_F, tmp_G;
    for (int idx = start_idx; idx < end_idx; ++idx) {
        int i = idx / nl;
        int j = idx % nl;
        CACHEs_WT(G, &G[i * nl + j], 0);
    }

    for (int k = 0; k < nj; ++k) {
        for (int idx = start_idx; idx < end_idx; ++idx) {
            int i = idx / nl;
            int j = idx % nl;
            if (i < ni && j < nl) {
                CACHEs_RD(G, &G[i * nl + j], tmp_G);
                CACHEs_RD(E, &E[i * nj + k], tmp_E);
                CACHEs_RD(F, &F[k * nl + j], tmp_F);
                tmp_G += tmp_E * tmp_F;
                CACHEs_WT(G, &G[i * nl + j], tmp_G);
            }
        }
    }
    CACHEs_FLUSH(G);
    CACHEs_INVALID(E);
    CACHEs_INVALID(F);
}
#endif

#ifdef SMALL_DATASET
__global__ void mm3_kernel1_cache(int ni, int nj, int nk, int nl, int nm, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *E)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = ni * nj;
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    int start_idx = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_idx = (thread_id + 1) * elements_per_thread + (thread_id + 1 < remainder ? thread_id + 1 : remainder);
    CACHEs_INIT(E, DATA_TYPE, E, 0, 14);
    CACHEs_INIT(B, DATA_TYPE, B, 0, 9);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 15);
    DATA_TYPE tmp_A, tmp_B, tmp_E;
    for (int idx = start_idx; idx < end_idx; ++idx) {
        int i = idx / nj;
        int j = idx % nj;
        CACHEs_WT(E, &E[i * nj + j], 0);
    }

    for (int k = 0; k < nk; ++k) {
        for (int idx = start_idx; idx < end_idx; ++idx) {
            int i = idx / nj;
            int j = idx % nj;
            if (i < ni && j < nj) {
                CACHEs_RD(E, &E[i * nj + j], tmp_E);
                CACHEs_RD(A, &A[i * nk + k], tmp_A);
                CACHEs_RD(B, &B[k * nj + j], tmp_B);
                tmp_E += tmp_A * tmp_B;
                CACHEs_WT(E, &E[i * nj + j], tmp_E);
            }
        }
    }
    CACHEs_FLUSH(E);
    CACHEs_INVALID(A);
    CACHEs_INVALID(B);
}

__global__ void mm3_kernel2_cache(int ni, int nj, int nk, int nl, int nm, DATA_TYPE *C, DATA_TYPE *D, DATA_TYPE *F)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = nj * nl;
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    int start_idx = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_idx = (thread_id + 1) * elements_per_thread + (thread_id + 1 < remainder ? thread_id + 1 : remainder);

    CACHEs_INIT(F, DATA_TYPE, F, 0, 14);
    CACHEs_INIT(D, DATA_TYPE, D, 0, 9);
    CACHEs_INIT(C, DATA_TYPE, C, 0, 15);
    DATA_TYPE tmp_C, tmp_D, tmp_F;
    for (int idx = start_idx; idx < end_idx; ++idx) {
        int i = idx / nl;
        int j = idx % nl;
        CACHEs_WT(F, &F[i * nl + j], 0);
    }

    for (int k = 0; k < nm; ++k) {
        for (int idx = start_idx; idx < end_idx; ++idx) {
            int i = idx / nl;
            int j = idx % nl;
            if (i < nj && j < nl) {
                CACHEs_RD(F, &F[i * nl + j], tmp_F);
                CACHEs_RD(C, &C[i * nm + k], tmp_C);
                CACHEs_RD(D, &D[k * nl + j], tmp_D);
                tmp_F += tmp_C * tmp_D;
                CACHEs_WT(F, &F[i * nl + j], tmp_F);
            }
        }
    }
    CACHEs_FLUSH(F);
    CACHEs_INVALID(C);
    CACHEs_INVALID(D);
}

__global__ void mm3_kernel3_cache(int ni, int nj, int nk, int nl, int nm, DATA_TYPE *E, DATA_TYPE *F, DATA_TYPE *G)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = ni * nl;
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    int start_idx = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_idx = (thread_id + 1) * elements_per_thread + (thread_id + 1 < remainder ? thread_id + 1 : remainder);

    CACHEs_INIT(G, DATA_TYPE, G, 0, 14);
    CACHEs_INIT(F, DATA_TYPE, F, 0, 9);
    CACHEs_INIT(E, DATA_TYPE, E, 0, 15);
    DATA_TYPE tmp_E, tmp_F, tmp_G;
    for (int idx = start_idx; idx < end_idx; ++idx) {
        int i = idx / nl;
        int j = idx % nl;
        CACHEs_WT(G, &G[i * nl + j], 0);
    }

    for (int k = 0; k < nj; ++k) {
        for (int idx = start_idx; idx < end_idx; ++idx) {
            int i = idx / nl;
            int j = idx % nl;
            if (i < ni && j < nl) {
                CACHEs_RD(G, &G[i * nl + j], tmp_G);
                CACHEs_RD(E, &E[i * nj + k], tmp_E);
                CACHEs_RD(F, &F[k * nl + j], tmp_F);
                tmp_G += tmp_E * tmp_F;
                CACHEs_WT(G, &G[i * nl + j], tmp_G);
            }
        }
    }
    CACHEs_FLUSH(G);
    CACHEs_INVALID(E);
    CACHEs_INVALID(F);
}
#endif

#ifdef STANDARD_DATASET /* Default if unspecified. */
__global__ void mm3_kernel1_cache(int ni, int nj, int nk, int nl, int nm, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *E)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = ni * nj;
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    int start_idx = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_idx = (thread_id + 1) * elements_per_thread + (thread_id + 1 < remainder ? thread_id + 1 : remainder);
    CACHEs_INIT(E, DATA_TYPE, E, 0, 14);
    CACHEs_INIT(B, DATA_TYPE, B, 0, 9);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 15);
    DATA_TYPE tmp_A, tmp_B, tmp_E;
    for (int idx = start_idx; idx < end_idx; ++idx) {
        int i = idx / nj;
        int j = idx % nj;
        CACHEs_WT(E, &E[i * nj + j], 0);
    }

    for (int k = 0; k < nk; ++k) {
        for (int idx = start_idx; idx < end_idx; ++idx) {
            int i = idx / nj;
            int j = idx % nj;
            if (i < ni && j < nj) {
                CACHEs_RD(E, &E[i * nj + j], tmp_E);
                CACHEs_RD(A, &A[i * nk + k], tmp_A);
                CACHEs_RD(B, &B[k * nj + j], tmp_B);
                tmp_E += tmp_A * tmp_B;
                CACHEs_WT(E, &E[i * nj + j], tmp_E);
            }
        }
    }
    CACHEs_FLUSH(E);
    CACHEs_INVALID(A);
    CACHEs_INVALID(B);
}

__global__ void mm3_kernel2_cache(int ni, int nj, int nk, int nl, int nm, DATA_TYPE *C, DATA_TYPE *D, DATA_TYPE *F)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = nj * nl;
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    int start_idx = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_idx = (thread_id + 1) * elements_per_thread + (thread_id + 1 < remainder ? thread_id + 1 : remainder);

    CACHEs_INIT(F, DATA_TYPE, F, 0, 14);
    CACHEs_INIT(D, DATA_TYPE, D, 0, 9);
    CACHEs_INIT(C, DATA_TYPE, C, 0, 15);
    DATA_TYPE tmp_C, tmp_D, tmp_F;
    for (int idx = start_idx; idx < end_idx; ++idx) {
        int i = idx / nl;
        int j = idx % nl;
        CACHEs_WT(F, &F[i * nl + j], 0);
    }

    for (int k = 0; k < nm; ++k) {
        for (int idx = start_idx; idx < end_idx; ++idx) {
            int i = idx / nl;
            int j = idx % nl;
            if (i < nj && j < nl) {
                CACHEs_RD(F, &F[i * nl + j], tmp_F);
                CACHEs_RD(C, &C[i * nm + k], tmp_C);
                CACHEs_RD(D, &D[k * nl + j], tmp_D);
                tmp_F += tmp_C * tmp_D;
                CACHEs_WT(F, &F[i * nl + j], tmp_F);
            }
        }
    }
    CACHEs_FLUSH(F);
    CACHEs_INVALID(C);
    CACHEs_INVALID(D);
}

__global__ void mm3_kernel3_cache(int ni, int nj, int nk, int nl, int nm, DATA_TYPE *E, DATA_TYPE *F, DATA_TYPE *G)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = ni * nl;
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    int start_idx = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_idx = (thread_id + 1) * elements_per_thread + (thread_id + 1 < remainder ? thread_id + 1 : remainder);

    CACHEs_INIT(G, DATA_TYPE, G, 0, 14);
    CACHEs_INIT(F, DATA_TYPE, F, 0, 9);
    CACHEs_INIT(E, DATA_TYPE, E, 0, 15);
    DATA_TYPE tmp_E, tmp_F, tmp_G;
    for (int idx = start_idx; idx < end_idx; ++idx) {
        int i = idx / nl;
        int j = idx % nl;
        CACHEs_WT(G, &G[i * nl + j], 0);
    }

    for (int k = 0; k < nj; ++k) {
        for (int idx = start_idx; idx < end_idx; ++idx) {
            int i = idx / nl;
            int j = idx % nl;
            if (i < ni && j < nl) {
                CACHEs_RD(G, &G[i * nl + j], tmp_G);
                CACHEs_RD(E, &E[i * nj + k], tmp_E);
                CACHEs_RD(F, &F[k * nl + j], tmp_F);
                tmp_G += tmp_E * tmp_F;
                CACHEs_WT(G, &G[i * nl + j], tmp_G);
            }
        }
    }
    CACHEs_FLUSH(G);
    CACHEs_INVALID(E);
    CACHEs_INVALID(F);
}
#endif

#ifdef LARGE_DATASET
__global__ void mm3_kernel1_cache(int ni, int nj, int nk, int nl, int nm, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *E)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = ni * nj;
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    int start_idx = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_idx = (thread_id + 1) * elements_per_thread + (thread_id + 1 < remainder ? thread_id + 1 : remainder);
    CACHEs_INIT(E, DATA_TYPE, E, 0, 13);
    CACHEs_INIT(B, DATA_TYPE, B, 0, 9);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 15);
    DATA_TYPE tmp_A, tmp_B, tmp_E;
    for (int idx = start_idx; idx < end_idx; ++idx) {
        int i = idx / nj;
        int j = idx % nj;
        CACHEs_WT(E, &E[i * nj + j], 0);
    }

    for (int k = 0; k < nk; ++k) {
        for (int idx = start_idx; idx < end_idx; ++idx) {
            int i = idx / nj;
            int j = idx % nj;
            if (i < ni && j < nj) {
                CACHEs_RD(E, &E[i * nj + j], tmp_E);
                CACHEs_RD(A, &A[i * nk + k], tmp_A);
                CACHEs_RD(B, &B[k * nj + j], tmp_B);
                tmp_E += tmp_A * tmp_B;
                CACHEs_WT(E, &E[i * nj + j], tmp_E);
            }
        }
    }
    CACHEs_FLUSH(E);
    CACHEs_INVALID(A);
    CACHEs_INVALID(B);
}

__global__ void mm3_kernel2_cache(int ni, int nj, int nk, int nl, int nm, DATA_TYPE *C, DATA_TYPE *D, DATA_TYPE *F)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = nj * nl;
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    int start_idx = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_idx = (thread_id + 1) * elements_per_thread + (thread_id + 1 < remainder ? thread_id + 1 : remainder);

    CACHEs_INIT(F, DATA_TYPE, F, 0, 13);
    CACHEs_INIT(D, DATA_TYPE, D, 0, 9);
    CACHEs_INIT(C, DATA_TYPE, C, 0, 15);
    DATA_TYPE tmp_C, tmp_D, tmp_F;
    for (int idx = start_idx; idx < end_idx; ++idx) {
        int i = idx / nl;
        int j = idx % nl;
        CACHEs_WT(F, &F[i * nl + j], 0);
    }

    for (int k = 0; k < nm; ++k) {
        for (int idx = start_idx; idx < end_idx; ++idx) {
            int i = idx / nl;
            int j = idx % nl;
            if (i < nj && j < nl) {
                CACHEs_RD(F, &F[i * nl + j], tmp_F);
                CACHEs_RD(C, &C[i * nm + k], tmp_C);
                CACHEs_RD(D, &D[k * nl + j], tmp_D);
                tmp_F += tmp_C * tmp_D;
                CACHEs_WT(F, &F[i * nl + j], tmp_F);
            }
        }
    }
    CACHEs_FLUSH(F);
    CACHEs_INVALID(C);
    CACHEs_INVALID(D);
}

__global__ void mm3_kernel3_cache(int ni, int nj, int nk, int nl, int nm, DATA_TYPE *E, DATA_TYPE *F, DATA_TYPE *G)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = ni * nl;
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    int start_idx = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_idx = (thread_id + 1) * elements_per_thread + (thread_id + 1 < remainder ? thread_id + 1 : remainder);

    CACHEs_INIT(G, DATA_TYPE, G, 0, 13);
    CACHEs_INIT(F, DATA_TYPE, F, 0, 9);
    CACHEs_INIT(E, DATA_TYPE, E, 0, 15);
    DATA_TYPE tmp_E, tmp_F, tmp_G;
    for (int idx = start_idx; idx < end_idx; ++idx) {
        int i = idx / nl;
        int j = idx % nl;
        CACHEs_WT(G, &G[i * nl + j], 0);
    }

    for (int k = 0; k < nj; ++k) {
        for (int idx = start_idx; idx < end_idx; ++idx) {
            int i = idx / nl;
            int j = idx % nl;
            if (i < ni && j < nl) {
                CACHEs_RD(G, &G[i * nl + j], tmp_G);
                CACHEs_RD(E, &E[i * nj + k], tmp_E);
                CACHEs_RD(F, &F[k * nl + j], tmp_F);
                tmp_G += tmp_E * tmp_F;
                CACHEs_WT(G, &G[i * nl + j], tmp_G);
            }
        }
    }
    CACHEs_FLUSH(G);
    CACHEs_INVALID(E);
    CACHEs_INVALID(F);
}
#endif

#ifdef EXTRALARGE_DATASET
__global__ void mm3_kernel1_cache(int ni, int nj, int nk, int nl, int nm, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *E)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = ni * nj;
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    int start_idx = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_idx = (thread_id + 1) * elements_per_thread + (thread_id + 1 < remainder ? thread_id + 1 : remainder);
    CACHEs_INIT(E, DATA_TYPE, E, 0, 14);
    CACHEs_INIT(B, DATA_TYPE, B, 0, 9);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 15);
    DATA_TYPE tmp_A, tmp_B, tmp_E;
    for (int idx = start_idx; idx < end_idx; ++idx) {
        int i = idx / nj;
        int j = idx % nj;
        CACHEs_WT(E, &E[i * nj + j], 0);
    }

    for (int k = 0; k < nk; ++k) {
        for (int idx = start_idx; idx < end_idx; ++idx) {
            int i = idx / nj;
            int j = idx % nj;
            if (i < ni && j < nj) {
                CACHEs_RD(E, &E[i * nj + j], tmp_E);
                CACHEs_RD(A, &A[i * nk + k], tmp_A);
                CACHEs_RD(B, &B[k * nj + j], tmp_B);
                tmp_E += tmp_A * tmp_B;
                CACHEs_WT(E, &E[i * nj + j], tmp_E);
            }
        }
    }
    CACHEs_FLUSH(E);
    CACHEs_INVALID(A);
    CACHEs_INVALID(B);
}

__global__ void mm3_kernel2_cache(int ni, int nj, int nk, int nl, int nm, DATA_TYPE *C, DATA_TYPE *D, DATA_TYPE *F)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = nj * nl;
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    int start_idx = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_idx = (thread_id + 1) * elements_per_thread + (thread_id + 1 < remainder ? thread_id + 1 : remainder);

    CACHEs_INIT(F, DATA_TYPE, F, 0, 14);
    CACHEs_INIT(D, DATA_TYPE, D, 0, 9);
    CACHEs_INIT(C, DATA_TYPE, C, 0, 15);
    DATA_TYPE tmp_C, tmp_D, tmp_F;
    for (int idx = start_idx; idx < end_idx; ++idx) {
        int i = idx / nl;
        int j = idx % nl;
        CACHEs_WT(F, &F[i * nl + j], 0);
    }

    for (int k = 0; k < nm; ++k) {
        for (int idx = start_idx; idx < end_idx; ++idx) {
            int i = idx / nl;
            int j = idx % nl;
            if (i < nj && j < nl) {
                CACHEs_RD(F, &F[i * nl + j], tmp_F);
                CACHEs_RD(C, &C[i * nm + k], tmp_C);
                CACHEs_RD(D, &D[k * nl + j], tmp_D);
                tmp_F += tmp_C * tmp_D;
                CACHEs_WT(F, &F[i * nl + j], tmp_F);
            }
        }
    }
    CACHEs_FLUSH(F);
    CACHEs_INVALID(C);
    CACHEs_INVALID(D);
}

__global__ void mm3_kernel3_cache(int ni, int nj, int nk, int nl, int nm, DATA_TYPE *E, DATA_TYPE *F, DATA_TYPE *G)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = ni * nl;
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    int start_idx = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_idx = (thread_id + 1) * elements_per_thread + (thread_id + 1 < remainder ? thread_id + 1 : remainder);

    CACHEs_INIT(G, DATA_TYPE, G, 0, 14);
    CACHEs_INIT(F, DATA_TYPE, F, 0, 9);
    CACHEs_INIT(E, DATA_TYPE, E, 0, 15);
    DATA_TYPE tmp_E, tmp_F, tmp_G;
    for (int idx = start_idx; idx < end_idx; ++idx) {
        int i = idx / nl;
        int j = idx % nl;
        CACHEs_WT(G, &G[i * nl + j], 0);
    }

    for (int k = 0; k < nj; ++k) {
        for (int idx = start_idx; idx < end_idx; ++idx) {
            int i = idx / nl;
            int j = idx % nl;
            if (i < ni && j < nl) {
                CACHEs_RD(G, &G[i * nl + j], tmp_G);
                CACHEs_RD(E, &E[i * nj + k], tmp_E);
                CACHEs_RD(F, &F[k * nl + j], tmp_F);
                tmp_G += tmp_E * tmp_F;
                CACHEs_WT(G, &G[i * nl + j], tmp_G);
            }
        }
    }
    CACHEs_FLUSH(G);
    CACHEs_INVALID(E);
    CACHEs_INVALID(F);
}
#endif