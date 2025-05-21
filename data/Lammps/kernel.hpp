#include <hip/hip_runtime.h>
#include <cmath>

// #define ONETYPE 3

#define numtyp float
#define numtyp4 float4
#define acctyp float
#define acctyp3 float3

struct _lgpu_int2
{
    int x;
    int y;
};
#define int2 _lgpu_int2

#define MAX_SHARED_TYPES 11
#define BLOCK_PAIR 256
#define EVFLAG 1
#define NEIGHMASK 0x3FFFFFFF

#define fast_mul(X, Y) (X) * (Y)

#define EVFLAG 1
#define NOUNROLL
#define GLOBAL_ID_X threadIdx.x + fast_mul(blockIdx.x, blockDim.x)
#define GLOBAL_ID_Y threadIdx.y + fast_mul(blockIdx.y, blockDim.y)
#define GLOBAL_SIZE_X fast_mul(gridDim.x, blockDim.x);
#define GLOBAL_SIZE_Y fast_mul(gridDim.y, blockDim.y);
#define THREAD_ID_X threadIdx.x
#define THREAD_ID_Y threadIdx.y
#define BLOCK_ID_X blockIdx.x
#define BLOCK_ID_Y blockIdx.y
#define BLOCK_SIZE_X blockDim.x
#define BLOCK_SIZE_Y blockDim.y
#define NUM_BLOCKS_X gridDim.x

#define __local __shared__

#define atom_info(t_per_atom, ii, tid, offset) \
    tid = THREAD_ID_X;                         \
    offset = tid & (t_per_atom - 1);           \
    ii = fast_mul((int)BLOCK_ID_X, (int)(BLOCK_SIZE_X) / t_per_atom) + tid / t_per_atom;

#define local_allocate_store_answers_eam() \
    __local acctyp red_acc[6][BLOCK_PAIR];

#define nbor_info(dev_nbor, dev_packed, nbor_pitch, t_per_atom, ii, offset,                        \
                  i, numj, n_stride, nbor_end, nbor_begin)                                         \
    i = dev_nbor[ii];                                                                              \
    nbor_begin = ii + nbor_pitch;                                                                  \
    numj = dev_nbor[nbor_begin];                                                                   \
    if (dev_nbor == dev_packed)                                                                    \
    {                                                                                              \
        nbor_begin += nbor_pitch + fast_mul(ii, t_per_atom - 1);                                   \
        n_stride = fast_mul(t_per_atom, nbor_pitch);                                               \
        nbor_end = nbor_begin + fast_mul(numj / t_per_atom, n_stride) + (numj & (t_per_atom - 1)); \
        nbor_begin += offset;                                                                      \
    }                                                                                              \
    else                                                                                           \
    {                                                                                              \
        nbor_begin += nbor_pitch;                                                                  \
        nbor_begin = dev_nbor[nbor_begin];                                                         \
        nbor_end = nbor_begin + numj;                                                              \
        n_stride = t_per_atom;                                                                     \
        nbor_begin += offset;                                                                      \
    }

#define pos_tex x_
#define fp_tex fp_
#define rhor_sp1_tex rhor_spline1
#define rhor_sp2_tex rhor_spline2
#define frho_sp1_tex frho_spline1
#define frho_sp2_tex frho_spline2
#define z2r_sp1_tex z2r_spline1
#define z2r_sp2_tex z2r_spline2

#define fetch4(ans, i, pos_tex) (ans = *(((float4 *)pos_tex) + i))
#define fetch(ans, i, q_tex) (ans = *(((float *)q_tex) + i))

#if (NBOR_PREFETCH == 0)
#define ucl_prefetch(p)
#endif

#if (NBOR_PREFETCH == 1)
inline void ucl_prefetch(const __global int *p)
{
    prefetch(p, 1);
}
#endif
// 在文件 lal_preprocessor.h 中还有 NBOR_PREFETCH == 2 的情况

#define ucl_sqrt sqrtf

#define MIN(A, B) ((A) < (B) ? (A) : (B))
#define MAX(A, B) ((A) > (B) ? (A) : (B))

#define ucl_recip(x) ((numtyp)1.0 / (x))

// #define simdsync() __syncwarp(0xffffffff)
#define simdsync() __syncthreads()

#define store_answers_eam(f, energy, virial, ii, inum, tid, t_per_atom, \
                          offset, elag, vflag, ans, engv)               \
    if (t_per_atom > 1)                                                 \
    {                                                                   \
        red_acc[0][tid] = f.x;                                          \
        red_acc[1][tid] = f.y;                                          \
        red_acc[2][tid] = f.z;                                          \
        red_acc[3][tid] = energy;                                       \
        for (unsigned int s = t_per_atom / 2; s > 0; s >>= 1)           \
        {                                                               \
            simdsync();                                                 \
            if (offset < s)                                             \
            {                                                           \
                for (int r = 0; r < 4; r++)                             \
                    red_acc[r][tid] += red_acc[r][tid + s];             \
            }                                                           \
        }                                                               \
        f.x = red_acc[0][tid];                                          \
        f.y = red_acc[1][tid];                                          \
        f.z = red_acc[2][tid];                                          \
        energy = red_acc[3][tid];                                       \
        if (EVFLAG && vflag)                                            \
        {                                                               \
            simdsync();                                                 \
            for (int r = 0; r < 6; r++)                                 \
                red_acc[r][tid] = virial[r];                            \
            for (unsigned int s = t_per_atom / 2; s > 0; s >>= 1)       \
            {                                                           \
                simdsync();                                             \
                if (offset < s)                                         \
                {                                                       \
                    for (int r = 0; r < 6; r++)                         \
                        red_acc[r][tid] += red_acc[r][tid + s];         \
                }                                                       \
            }                                                           \
            for (int r = 0; r < 6; r++)                                 \
                virial[r] = red_acc[r][tid];                            \
        }                                                               \
    }                                                                   \
    if (offset == 0 && ii < inum)                                       \
    {                                                                   \
        int ei = ii;                                                    \
        if (EVFLAG && eflag)                                            \
        {                                                               \
            engv[ei] += energy * (acctyp)0.5;                           \
            ei += inum;                                                 \
        }                                                               \
        if (EVFLAG && vflag)                                            \
        {                                                               \
            for (int i = 0; i < 6; i++)                                 \
            {                                                           \
                engv[ei] = virial[i] * (acctyp)0.5;                     \
                ei += inum;                                             \
            }                                                           \
        }                                                               \
        ans[ii] = f;                                                    \
    }


extern "C" __global__ void k_eam_fast(const numtyp4 *x_,
                                      const numtyp *fp_,
                                      const int2 *type2rhor_z2r_in,
                                      const numtyp4 *rhor_spline1,
                                      const numtyp4 *z2r_spline1,
                                      const numtyp4 *z2r_spline2,
                                      const numtyp *cutsq,
                                      const int *dev_nbor,
                                      const int *dev_packed,
                                      acctyp3 *ans,
                                      acctyp *engv,
                                      const int eflag, const int vflag, const int inum,
                                      const int nbor_pitch, const numtyp cutforcesq,
                                      const numtyp rdr, const int nr, const int t_per_atom)
{
    int tid, ii, offset;
    atom_info(t_per_atom, ii, tid, offset);

#ifndef ONETYPE
    __local int2 type2rhor_z2r[MAX_SHARED_TYPES * MAX_SHARED_TYPES];
    if (tid < MAX_SHARED_TYPES * MAX_SHARED_TYPES)
    {
        type2rhor_z2r[tid] = type2rhor_z2r_in[tid];
    }
    __syncthreads();
#else
    const int oi = ONETYPE * MAX_SHARED_TYPES + ONETYPE;
    const int type2rhor_z2rx = type2rhor_z2r_in[oi].x;
    const int type2rhor_z2ry = type2rhor_z2r_in[oi].y;
#endif

    int n_stride;
    local_allocate_store_answers_eam();

    acctyp3 f;
    f.x = (acctyp)0;
    f.y = (acctyp)0;
    f.z = (acctyp)0;
    acctyp energy, virial[6];
    if (EVFLAG)
    {
        energy = (acctyp)0;
        for (int i = 0; i < 6; i++)
            virial[i] = (acctyp)0;
    }

    if (ii < inum)
    {
        int nbor, nbor_end;
        int i, numj;
        nbor_info(dev_nbor, dev_packed, nbor_pitch, t_per_atom, ii, offset, i, numj,
                  n_stride, nbor_end, nbor);

        numtyp4 ix;
        fetch4(ix, i, pos_tex); // x_[i];
        numtyp ifp;
        fetch(ifp, i, fp_tex); // fp_[i];
#ifndef ONETYPE
        int iw = ix.w;
        int itype = fast_mul((int)MAX_SHARED_TYPES, iw);
#endif

        for (; nbor < nbor_end; nbor += n_stride)
        {
            ucl_prefetch(dev_packed + nbor + n_stride);
            int j = dev_packed[nbor];
            j &= NEIGHMASK;

            numtyp4 jx;
            fetch4(jx, j, pos_tex); // x_[j];
#ifndef ONETYPE
            int jw = jx.w;
            int jtype = fast_mul((int)MAX_SHARED_TYPES, jw);
#endif

            // Compute r12
            numtyp delx = ix.x - jx.x;
            numtyp dely = ix.y - jx.y;
            numtyp delz = ix.z - jx.z;
            numtyp rsq = delx * delx + dely * dely + delz * delz;

            int ijtype = fast_mul((int)MAX_SHARED_TYPES, ix.w) + jx.w;
            if (rsq < cutforcesq && cutsq[ijtype] > (numtyp)0)
            {
                numtyp r = ucl_sqrt(rsq);
                numtyp p = r * rdr + (numtyp)1.0;
                int m = p;
                m = MIN(m, nr - 1);
                p -= m;
                p = MIN(p, (numtyp)1.0);

                numtyp4 coeff;
#ifndef ONETYPE
                int mtype;
#endif
                int index;

#ifndef ONETYPE
                mtype = itype + jw;
                index = type2rhor_z2r[mtype].x * (nr + 1) + m;
#else
                index = type2rhor_z2rx * (nr + 1) + m;
#endif
                fetch4(coeff, index, rhor_sp1_tex);
                numtyp rhoip = (coeff.x * p + coeff.y) * p + coeff.z;

#ifndef ONETYPE
                mtype = jtype + iw;
                index = type2rhor_z2r[mtype].x * (nr + 1) + m;
#else
                index = type2rhor_z2rx * (nr + 1) + m;
#endif
                fetch4(coeff, index, rhor_sp1_tex);
                numtyp rhojp = (coeff.x * p + coeff.y) * p + coeff.z;

#ifndef ONETYPE
                mtype = itype + jw;
                index = type2rhor_z2r[mtype].y * (nr + 1) + m;
#else
                index = type2rhor_z2ry * (nr + 1) + m;
#endif

                fetch4(coeff, index, z2r_sp1_tex);
                numtyp z2p = (coeff.x * p + coeff.y) * p + coeff.z;
                fetch4(coeff, index, z2r_sp2_tex);
                numtyp z2 = ((coeff.x * p + coeff.y) * p + coeff.z) * p + coeff.w;

                numtyp recip = ucl_recip(r);
                numtyp phi = z2 * recip;
                numtyp phip = z2p * recip - phi * recip;
                numtyp psip;
                fetch(psip, j, fp_tex);
                psip = ifp * rhojp + psip * rhoip + phip;
                numtyp force = -psip * recip;

                f.x += delx * force;
                f.y += dely * force;
                f.z += delz * force;

                if (EVFLAG && eflag)
                {
                    energy += phi;
                }
                if (EVFLAG && vflag)
                {
                    virial[0] += delx * delx * force;
                    virial[1] += dely * dely * force;
                    virial[2] += delz * delz * force;
                    virial[3] += delx * dely * force;
                    virial[4] += delx * delz * force;
                    virial[5] += dely * delz * force;
                }
            }
        } // for nbor
    } // if ii

    store_answers_eam(f, energy, virial, ii, inum, tid, t_per_atom, offset, eflag, vflag,
                      ans, engv);
}