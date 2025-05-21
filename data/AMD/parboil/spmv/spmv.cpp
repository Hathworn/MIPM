#include "parboil.h"
#include <stdio.h>
#include <stdlib.h>
#include <endian.h>
#include <malloc.h>
#include <inttypes.h>
#include <ctype.h>
#include <string.h>

#ifndef __FILEH__
#define __FILEH__

void inputData(char* fName, int* len, int* depth, int* dim,int *nzcnt_len,int *pad,
               float** h_data, int** h_indices, int** h_ptr,
               int** h_perm, int** h_nzcnt);

void input_vec(char* fNanme, float *h_vec,int dim);
void outputData(char* fName, float *h_Ax_vector,int dim);

#endif

void inputData(char* fName, int* len, int* depth, int* dim,int *nzcnt_len,int *pad,
               float** h_data, int** h_indices, int** h_ptr,
               int** h_perm, int** h_nzcnt)
{
  FILE* fid = fopen(fName, "rb");

  if (fid == NULL)
    {
      fprintf(stderr, "Cannot open input file\n");
      exit(-1);
    }

  fscanf(fid, "%d %d %d %d %d\n",len,depth,nzcnt_len,dim,pad);
  int _len=len[0];
  int _depth=depth[0];
  int _dim=dim[0];
  int _pad=pad[0];
  int _nzcnt_len=nzcnt_len[0];
  
  *h_data = (float *) malloc(_len * sizeof (float));
  fread (*h_data, sizeof (float), _len, fid);
  
  *h_indices = (int *) malloc(_len * sizeof (int));
  fread (*h_indices, sizeof (int), _len, fid);
  
  *h_ptr = (int *) malloc(_depth * sizeof (int));
  fread (*h_ptr, sizeof (int), _depth, fid);
  
  *h_perm = (int *) malloc(_dim * sizeof (int));
  fread (*h_perm, sizeof (int), _dim, fid);
  
  *h_nzcnt = (int *) malloc(_nzcnt_len * sizeof (int));
  fread (*h_nzcnt, sizeof (int), _nzcnt_len, fid);

  fclose (fid); 
}

void input_vec(char *fName,float *h_vec,int dim)
{
  FILE* fid = fopen(fName, "rb");
  fread (h_vec, sizeof (float), dim, fid);
  fclose(fid);
  
}

void outputData(char* fName, float *h_Ax_vector,int dim)
{
  FILE* fid = fopen(fName, "w");
  uint32_t tmp32;
  if (fid == NULL)
    {
      fprintf(stderr, "Cannot open output file\n");
      exit(-1);
    }
  tmp32 = dim;
  fwrite(&tmp32, sizeof(uint32_t), 1, fid);
  fwrite(h_Ax_vector, sizeof(float), dim, fid);

  fclose (fid);
}


void compute_active_thread(unsigned int *thread,
					unsigned int *grid,
					int task,
					int pad,
					int major,
					int minor,
					int warp_size,
					int sm);

void compute_active_thread(unsigned int *thread,
					unsigned int *grid,
					int task,
					int pad,
					int major,
					int minor,
					int warp_size,
					int sm)
{
	int max_thread;
	int max_warp;
	int max_block=8;
	if(major==1)
	{
		if(minor>=2)
		{
			max_thread=1024;
			max_warp=32;
		}
		else
		{
			max_thread=768;
			max_warp=24;
		}
	}
	else if(major==2)
	{
		max_thread=1536;
		max_warp=48;
	}
	else
	{
		//newer GPU  //keep using 2.0
		max_thread=1536;
		max_warp=48;
	}
	
	int _grid;
	int _thread;
	int threads_per_sm=0;
	if(task*pad>sm*max_thread)
	{
		//_grid=sm*max_block;
		_thread=max_thread/max_block;
		_grid=(task*pad+_thread-1)/_thread;
	}
	else
	{
		_thread=pad;
		_grid=task;
	}
	thread[0]=_thread;
	grid[0]=_grid;
	
}


#include "hip/hip_runtime.h"

#ifndef _CONVERT_DATASET_H
#define _CONVERT_DATASET_H

#ifdef __cplusplus
extern "C" {
#endif
int coo_to_jds(char* mtx_filename, int pad_rows, int warp_size, int pack_size,
	       int mirrored, int binary, int debug_level,
               float** data, int** data_row_ptr, int** nz_count, int** data_col_index,
               int** data_row_map, int* data_cols, int* dim, int* len, int* nz_count_len,
	       int* data_ptr_len);

#ifdef __cplusplus
}
#endif

#endif


#define WARP_BITS 5
#define CUERR { hipError_t err; \
  if ((err = hipGetLastError()) != hipSuccess) { \
  printf("CUDA error: %s, line %d\n", hipGetErrorString(err), __LINE__); \
  return -1; }}
  
 
//TEXTURE memory
texture<float,1> tex_x_float;

//constant memory
__constant__ int jds_ptr_int[5000];
__constant__ int sh_zcnt_int[5000];

__global__ void spmv_jds_naive(float *dst_vector,
							   const float *d_data,const int *d_index, const int *d_perm,
							   const float *x_vec,const int *d_nzcnt,const int dem);


__global__ void spmv_jds_naive(float *dst_vector,
            const float *d_data,const int *d_index, const int *d_perm,
            const float *x_vec,const int *d_nzcnt,const int dim)
{
  int ix = blockIdx.x * blockDim.x + threadIdx.x;

  if (ix < dim) {
    float sum = 0.0f;
    // 32 is warp size
    int bound = sh_zcnt_int[ix / 32];

    for (int k = 0; k < bound; k++) {
      int j = jds_ptr_int[k] + ix;
      int in = d_index[j];

      float d = d_data[j];
      float t = x_vec[in];

      sum += d * t;
    }

    dst_vector[d_perm[ix]] = sum;
  }
}

static int generate_vector(float *x_vector, int dim) 
{
  srand(54321);
  for (int i = 0; i < dim; i++) {
    x_vector[i] = (rand() / (float) RAND_MAX);
  }
  return 0;
}


#ifndef MM_IO_H
#define MM_IO_H

#define MM_MAX_LINE_LENGTH 1025
#define MatrixMarketBanner "%%MatrixMarket"
#define MM_MAX_TOKEN_LENGTH 64

typedef char MM_typecode[4];

char *mm_typecode_to_str(MM_typecode matcode);

int mm_read_banner(FILE *f, MM_typecode *matcode);
int mm_read_mtx_crd_size(FILE *f, int *M, int *N, int *nz);
int mm_read_mtx_array_size(FILE *f, int *M, int *N);

int mm_write_banner(FILE *f, MM_typecode matcode);
int mm_write_mtx_crd_size(FILE *f, int M, int N, int nz);
int mm_write_mtx_array_size(FILE *f, int M, int N);


/********************* MM_typecode query fucntions ***************************/

#define mm_is_matrix(typecode)	((typecode)[0]=='M')

#define mm_is_sparse(typecode)	((typecode)[1]=='C')
#define mm_is_coordinate(typecode)((typecode)[1]=='C')
#define mm_is_dense(typecode)	((typecode)[1]=='A')
#define mm_is_array(typecode)	((typecode)[1]=='A')

#define mm_is_complex(typecode)	((typecode)[2]=='C')
#define mm_is_real(typecode)		((typecode)[2]=='R')
#define mm_is_pattern(typecode)	((typecode)[2]=='P')
#define mm_is_integer(typecode) ((typecode)[2]=='I')

#define mm_is_symmetric(typecode)((typecode)[3]=='S')
#define mm_is_general(typecode)	((typecode)[3]=='G')
#define mm_is_skew(typecode)	((typecode)[3]=='K')
#define mm_is_hermitian(typecode)((typecode)[3]=='H')

int mm_is_valid(MM_typecode matcode);		/* too complex for a macro */


/********************* MM_typecode modify fucntions ***************************/

#define mm_set_matrix(typecode)	((*typecode)[0]='M')
#define mm_set_coordinate(typecode)	((*typecode)[1]='C')
#define mm_set_array(typecode)	((*typecode)[1]='A')
#define mm_set_dense(typecode)	mm_set_array(typecode)
#define mm_set_sparse(typecode)	mm_set_coordinate(typecode)

#define mm_set_complex(typecode)((*typecode)[2]='C')
#define mm_set_real(typecode)	((*typecode)[2]='R')
#define mm_set_pattern(typecode)((*typecode)[2]='P')
#define mm_set_integer(typecode)((*typecode)[2]='I')


#define mm_set_symmetric(typecode)((*typecode)[3]='S')
#define mm_set_general(typecode)((*typecode)[3]='G')
#define mm_set_skew(typecode)	((*typecode)[3]='K')
#define mm_set_hermitian(typecode)((*typecode)[3]='H')

#define mm_clear_typecode(typecode) ((*typecode)[0]=(*typecode)[1]= \
									(*typecode)[2]=' ',(*typecode)[3]='G')

#define mm_initialize_typecode(typecode) mm_clear_typecode(typecode)


/********************* Matrix Market error codes ***************************/


#define MM_COULD_NOT_READ_FILE	11
#define MM_PREMATURE_EOF		12
#define MM_NOT_MTX				13
#define MM_NO_HEADER			14
#define MM_UNSUPPORTED_TYPE		15
#define MM_LINE_TOO_LONG		16
#define MM_COULD_NOT_WRITE_FILE	17


/******************** Matrix Market internal definitions ********************

   MM_matrix_typecode: 4-character sequence

				    ojbect 		sparse/   	data        storage 
						  		dense     	type        scheme

   string position:	 [0]        [1]			[2]         [3]

   Matrix typecode:  M(atrix)  C(oord)		R(eal)   	G(eneral)
						        A(array)	C(omplex)   H(ermitian)
											P(attern)   S(ymmetric)
								    		I(nteger)	K(kew)

 ***********************************************************************/

#define MM_MTX_STR		"matrix"
#define MM_ARRAY_STR	"array"
#define MM_DENSE_STR	"array"
#define MM_COORDINATE_STR "coordinate" 
#define MM_SPARSE_STR	"coordinate"
#define MM_COMPLEX_STR	"complex"
#define MM_REAL_STR		"real"
#define MM_INT_STR		"integer"
#define MM_GENERAL_STR  "general"
#define MM_SYMM_STR		"symmetric"
#define MM_HERM_STR		"hermitian"
#define MM_SKEW_STR		"skew-symmetric"
#define MM_PATTERN_STR  "pattern"


/*  high level routines */

int mm_write_mtx_crd(char fname[], int M, int N, int nz, int I[], int J[],
		 double val[], MM_typecode matcode);
int mm_read_mtx_crd_data(FILE *f, int M, int N, int nz, int I[], int J[],
		double val[], MM_typecode matcode);
int mm_read_mtx_crd_entry(FILE *f, int *I, int *J, double *real, double *img,
			MM_typecode matcode);

int mm_read_unsymmetric_sparse(const char *fname, int *M_, int *N_, int *nz_,
                double **val_, int **I_, int **J_);



#endif

typedef struct _mat_entry {
    int row, col; /* i,j */
    float val;
} mat_entry;

typedef struct _row_stats { // stats on each row
    int index;
    int size;
    int start;
    int padding;
} row_stats;

int sort_rows(const void* a, const void* b) {
    return (((mat_entry*)a)->row - ((mat_entry*)b)->row);
}
int sort_cols(const void* a, const void* b) {
    return (((mat_entry*)a)->col - ((mat_entry*)b)->col);
}
/* sorts largest by size first */
int sort_stats(const void* a, const void* b) {
    return(((row_stats*)b)->size - ((row_stats*)a)->size);
}

int coo_to_jds(char* mtx_filename, int pad_rows, int warp_size, int pack_size,
	       int mirrored, int binary, int debug_level,
               float** data, int** data_row_ptr, int** nz_count, int** data_col_index,
               int** data_row_map, int* data_cols, int* dim, int* len, int* nz_count_len,
	       int* data_ptr_len) {
    int ret_code;
    MM_typecode matcode;
    FILE *f;
    int nz;   
    int i;
    float *val;
    mat_entry* entries;
    row_stats* stats;
    int rows, cols;
    
    if ((f = fopen(mtx_filename, "r")) == NULL) 
        exit(1);


    if (mm_read_banner(f, &matcode) != 0)
    {
        printf("Could not process Matrix Market banner.\n");
        exit(1);
    }


    /*  This is how one can screen matrix types if their application */
    /*  only supports a subset of the Matrix Market data types.      */

    if (mm_is_complex(matcode) && mm_is_matrix(matcode) && 
            mm_is_sparse(matcode) )
    {
        printf("Sorry, this application does not support ");
        printf("Market Market type: [%s]\n", mm_typecode_to_str(matcode));
        exit(1);
    }

    /* find out size of sparse matrix .... */

    if ((ret_code = mm_read_mtx_crd_size(f, &rows, &cols, &nz)) !=0)
        exit(1);
    *dim = rows;
    
    if (mirrored) {
	// max possible size, might be less because diagonal values aren't doubled
	entries = (mat_entry*) malloc(2 * nz * sizeof(mat_entry));
    } else {
	entries = (mat_entry*) malloc(nz * sizeof(mat_entry));
    }
    
    /* NOTE: when reading in doubles, ANSI C requires the use of the "l"  */
    /*   specifier as in "%lg", "%lf", "%le", otherwise errors will occur */
    /*  (ANSI C X3.159-1989, Sec. 4.9.6.2, p. 136 lines 13-15)            */
    int cur_i=0; // to account for mirrored diagonal entries

    for (i=0; i<nz; i++, cur_i++)
    {
	if (!binary) {
	    fscanf(f, "%d %d %f\n", &entries[cur_i].row, &entries[cur_i].col, &entries[cur_i].val);
	} else {
	    fscanf(f, "%d %d\n", &entries[cur_i].row, &entries[cur_i].col);
	    entries[cur_i].val = 1.0;
	}
        entries[cur_i].row--;
        entries[cur_i].col--;
	//printf("%d,%d = %f\n", entries[cur_i].row, entries[cur_i].col, entries[cur_i].val);
	if (mirrored) {
	    // fill in mirrored diagonal
	    if (entries[cur_i].row != entries[cur_i].col) { // not a diagonal value
		cur_i++;
		entries[cur_i].val = entries[cur_i-1].val;
		entries[cur_i].col = entries[cur_i-1].row;
		entries[cur_i].row = entries[cur_i-1].col;
		//printf("%d,%d = %f\n", entries[cur_i].row, entries[cur_i].col, entries[cur_i].val);
	    }
	}
    }
    // set new non-zero count
    nz = cur_i;
    if (debug_level >= 1) {
	printf("Converting COO to JDS format (%dx%d)\n%d matrix entries, warp size = %d, "
	       "row padding align = %d, pack size = %d\n\n", rows, cols, nz, warp_size, pad_rows, pack_size);
    }
    if (f !=stdin) fclose(f);

    /*
     * Now we have an array of values in entries
     * Transform to padded JDS format  - sort by rows, then fubini
     */

    int irow, icol=0, istart=0;
    int total_size=0;

    /* Loop through each entry to figure out padding, grouping that determine
     * final data array size
     *
     * First calculate stats for each row
     * 
     * Collect stats using the major_stats typedef
     */
    
    
    qsort(entries, nz, sizeof(mat_entry), sort_rows); // sort by row number
    rows = entries[nz-1].row+1; // last item is greatest row (zero indexed)
    if (rows%warp_size) { // pad group number to warp_size here
	rows += warp_size - rows%warp_size;
    }
    stats = (row_stats*) calloc(rows, sizeof(row_stats)); // set to 0
    *data_row_map = (int*) calloc(rows, sizeof(int));
    irow = entries[0].row; // set first row
    
    //printf("First row %d\n", irow);
    for (i=0; i<nz; i++) { // loop through each sorted entry
	if (entries[i].row != irow || i == nz-1) { // new row
	    //printf("%d != %d\n", entries[i].row, irow);
	    if (i == nz-1) {
		// last item, add it to current row
		//printf("Last item i=%d, row=%d, irow=%d\n", i, entries[i].row, irow);
		icol++;
	    }
	    // hit a new row, record stats for the last row (i-1)
	    stats[irow].size = icol; // record # cols in previous row
	    stats[irow].index = entries[i-1].row; // row # for previous stat item
	    //printf("Row %d, i=%d, irow=%d\n", entries[i].row, i, irow);
	    stats[irow].start = istart; // starting location in entries array
	    // set stats for the next row until this break again
	    icol=0; // reset row items
	    irow = entries[i].row;
	    istart = i;
	}
	icol++; // keep track of number of items in this row
    }
    
    
    *nz_count_len = rows/warp_size + rows%warp_size;
    *nz_count = (int*) malloc(*nz_count_len * sizeof(int)); // only one value per group
    
    /* sort based upon row size, greatest first */
    qsort(stats, rows, sizeof(row_stats), sort_stats);
    /* figure out padding and grouping */
    if (debug_level >= 1) {
	printf("Padding data....%d rows, %d groups\n", rows, *nz_count_len);
    }
    int pad_to, total_padding = 0, pack_to;
    pad_rows *= pack_size; // change padding to account for packed items
    for (i=0; i<rows; i++) {
	// record JDS to real row number
	(*data_row_map)[i] = stats[i].index;
	if (i<rows-1) {
	   // (*data_row_map)[i]--; // ???? no idea why this is off by 1
	}
	// each row is padded so the number of packed groups % pad_rows == 0
	if (i % warp_size == 0) { // on a group boundary with the largest number of items
	    // find padding in individual items
	    if (stats[i].size % pad_rows) {
		stats[i].padding = pad_rows - (stats[i].size % pad_rows); // find padding
	    } else {
		stats[i].padding = 0; // no padding necessary, already at pad multiple
	    }
	    if (stats[i].size % pack_size) {
		pack_to = ceil((float)stats[i].size/pack_size);
	    } else {
		pack_to = stats[i].size/pack_size;
	    }
	    //pack_to = stats[i].size + (!stats[i].size%pack_size) ? 0 : (pack_size - stats[i].size%pack_size);
	    pad_to = stats[i].size + stats[i].padding; // total size of this row, with padding
	    // TODO: change this to reflect the real number of nonzero packed items, not the padded
	    // value
	    (*nz_count)[i/warp_size] = pack_to; // number of packed items in this group
	    total_size += pad_to * warp_size; // allocate size for this padded group
	    if (debug_level >= 2)
		printf("Padding warp group %d to %d items, zn = %d\n", i/warp_size, pad_to, pack_to);
	} else {
	    stats[i].padding = pad_to - stats[i].size;
	}
	total_padding += stats[i].padding;
	//if (debug_level >= 2)
	//    printf("Row %d, %d items, %d padding\n", stats[i].index, stats[i].size, stats[i].padding);
    }
    
    /* allocate data and data_row_index */
    if (debug_level >= 1)
	printf("Allocating data space: %d entries (%f%% padding)\n", total_size, (float)100*total_padding/total_size);
    *data = (float*) calloc(total_size, sizeof(float)); // set to 0 so padded values are set
    *data_col_index = (int*) calloc(total_size, sizeof(int)); // any unset indexes point to 0
    *data_row_ptr = (int*) calloc(rows, sizeof(int));
    *len = total_size;
    i = 0; // data index, including padding
    
    /*
     * Keep looping through each row, writing data a group at a time
     * to the output array. Increment `irow` each time, and use it as
     * an index into entries along with stats.start to get the next
     * data item
     */
    irow = 0; // keep track of which row we are in inside the fubini-ed array
    int idata = 0; // position within final data array
    int entry_index, j;
    int ipack; // used in internal loop for writing packed values
    mat_entry entry;
    while (1) {
	/* record data_row_ptr */
	(*data_row_ptr)[irow] = idata;
	
	/* End condtion: the size of the greatest row is smaller than the current
	  Fubini-ed row */
	if (stats[0].size+stats[0].padding <= irow*pack_size) break;

	//printf("Data row pointer for row %d is %d\n", irow, idata);
	for (i=0; i<rows; i++) {
	    /* take one packed group from each original row */
	    //printf("Output irow %d icol %d (real %d,%d size %d)\n", irow, i, entry.col, i, stats[i].size);
	    /* Watch out for little vs big endian, and how opencl interprets vector casting from pointers */
	    for (ipack=0; ipack<pack_size; ipack++) {
		if (stats[i].size > irow*pack_size+ipack) {
		    // copy value
		    entry_index = stats[i].start + irow*pack_size+ipack;
		    entry = entries[entry_index];
		    /* record index and value */
		    (*data)[idata] = entry.val;
		    /* each data item will get its row index from the thread, col from here */
		    (*data_col_index)[idata] = entry.col;

		    if (debug_level >= 2) {
			if (i < 3) {
			    // first row debugging
			    printf("[%d row%d=%.3f]", ipack+1, i, entry.val);
			} else {
			    printf("%d", ipack+1);
			}
		    }
		} else if (stats[i].size+stats[i].padding > irow*pack_size+ipack) {
		    /* add padding to the end of each row here - this assumes padding is factored into allocated size */
		    if (debug_level >= 2) printf("0");
		    (*data_col_index)[idata] = -1;
		} else {
		    goto endwrite; // no data written this pass, so don't increment idata
		}
		idata += 1;
	    }
	}
	endwrite:
	if (debug_level >= 2) {
	    printf("\n");
	}
	irow += 1;
    }
    
    if (debug_level >= 1)
	printf("Finished converting.\nJDS format has %d columns, %d rows.\n", rows, irow);
    free(entries);
    free(stats);
    printf("nz_count_len = %d\n", *nz_count_len);
    
    *data_cols = rows;
    *data_ptr_len = irow+1;
    return 0;
}


int main(int argc, char** argv) {
  struct pb_TimerSet timers;
  struct pb_Parameters *parameters;

  printf("CUDA accelerated sparse matrix vector multiplication****\n");
  printf("Original version by Li-Wen Chang <lchang20@illinois.edu> and Shengzhao Wu<wu14@illinois.edu>\n");
  printf("This version maintained by Chris Rodrigues  ***********\n");

  parameters = pb_ReadParameters(&argc, argv);
  if ((parameters->inpFiles[0] == NULL) || (parameters->inpFiles[1] == NULL)) {
    fprintf(stderr, "Expecting one two filenames\n");
    exit(-1);
  }

  pb_InitializeTimerSet(&timers);
  pb_SwitchToTimer(&timers, pb_TimerID_COMPUTE);

  // Parameters declaration
  int len, depth, dim, pad = 32, nzcnt_len;

  // Host memory allocation
  float *h_data, *h_Ax_vector, *h_x_vector;
  int *h_indices, *h_ptr, *h_perm, *h_nzcnt;

  // Device memory allocation
  float *d_data, *d_Ax_vector, *d_x_vector;
  int *d_indices, *d_ptr, *d_perm, *d_nzcnt;

  // Load matrix from files
  pb_SwitchToTimer(&timers, pb_TimerID_IO);
  int col_count;

  printf("Input file %s\n", parameters->inpFiles[0]);
  coo_to_jds(
    parameters->inpFiles[0],
    1, // row padding
    pad, // warp size
    1, // pack size
    1, // is mirrored?
    0, // binary matrix
    1, // debug level
    &h_data, &h_ptr, &h_nzcnt, &h_indices, &h_perm,
    &col_count, &dim, &len, &nzcnt_len, &depth
  );

  h_Ax_vector = (float*)malloc(sizeof(float) * dim);
  h_x_vector = (float*)malloc(sizeof(float) * dim);
  input_vec(parameters->inpFiles[1], h_x_vector, dim);

  pb_SwitchToTimer(&timers, pb_TimerID_COMPUTE);

  // Get device properties
  hipDeviceProp_t deviceProp;
  hipGetDeviceProperties(&deviceProp, 0);

  pb_SwitchToTimer(&timers, pb_TimerID_COPY);
  // Memory allocation
  hipMalloc((void**)&d_data, len * sizeof(float));
  hipMalloc((void**)&d_indices, len * sizeof(int));
  hipMalloc((void**)&d_ptr, depth * sizeof(int));
  hipMalloc((void**)&d_perm, dim * sizeof(int));
  hipMalloc((void**)&d_nzcnt, nzcnt_len * sizeof(int));
  hipMalloc((void**)&d_x_vector, dim * sizeof(float));
  hipMalloc((void**)&d_Ax_vector, dim * sizeof(float));
  hipMemset((void*)d_Ax_vector, 0, dim * sizeof(float));

  // Memory copy
  hipMemcpy(d_data, h_data, len * sizeof(float), hipMemcpyHostToDevice);
  hipMemcpy(d_indices, h_indices, len * sizeof(int), hipMemcpyHostToDevice);
  hipMemcpy(d_perm, h_perm, dim * sizeof(int), hipMemcpyHostToDevice);
  hipMemcpy(d_x_vector, h_x_vector, dim * sizeof(int), hipMemcpyHostToDevice);
  hipMemcpyToSymbol(HIP_SYMBOL(jds_ptr_int), h_ptr, depth * sizeof(int));
  hipMemcpyToSymbol(HIP_SYMBOL(sh_zcnt_int), h_nzcnt, nzcnt_len * sizeof(int));

  hipDeviceSynchronize();
  pb_SwitchToTimer(&timers, pb_TimerID_COMPUTE);
  unsigned int grid, block;
  compute_active_thread(&block, &grid, nzcnt_len, pad, deviceProp.major, deviceProp.minor,
                        deviceProp.warpSize, deviceProp.multiProcessorCount);

  // Main execution
  pb_SwitchToTimer(&timers, pb_TimerID_KERNEL);
  for (int i = 0; i < 50; i++) {
    spmv_jds_naive<<<grid, block>>>(d_Ax_vector,
                                    d_data, d_indices, d_perm,
                                    d_x_vector, d_nzcnt, dim);
  }

  CUERR // Check and clear any existing errors

  hipDeviceSynchronize();

  pb_SwitchToTimer(&timers, pb_TimerID_COPY);
  // Memory copy from device to host
  hipMemcpy(h_Ax_vector, d_Ax_vector, dim * sizeof(float), hipMemcpyDeviceToHost);

  hipDeviceSynchronize();
  hipFree(d_data);
  hipFree(d_indices);
  hipFree(d_ptr);
  hipFree(d_perm);
  hipFree(d_nzcnt);
  hipFree(d_x_vector);
  hipFree(d_Ax_vector);

  if (parameters->outFile) {
    pb_SwitchToTimer(&timers, pb_TimerID_IO);
    outputData(parameters->outFile, h_Ax_vector, dim);
  }

  pb_SwitchToTimer(&timers, pb_TimerID_COMPUTE);

  free(h_data);
  free(h_indices);
  free(h_ptr);
  free(h_perm);
  free(h_nzcnt);
  free(h_Ax_vector);
  free(h_x_vector);

  pb_SwitchToTimer(&timers, pb_TimerID_NONE);
  pb_PrintTimerSet(&timers);
  pb_FreeParameters(parameters);

  return 0;
}



int mm_read_unsymmetric_sparse(const char *fname, int *M_, int *N_, int *nz_,
                double **val_, int **I_, int **J_)
{
    FILE *f;
    MM_typecode matcode;
    int M, N, nz;
    int i;
    double *val;
    int *I, *J;
 
    if ((f = fopen(fname, "r")) == NULL)
            return -1;
 
 
    if (mm_read_banner(f, &matcode) != 0)
    {
        printf("mm_read_unsymetric: Could not process Matrix Market banner ");
        printf(" in file [%s]\n", fname);
        return -1;
    }
 
 
 
    if ( !(mm_is_real(matcode) && mm_is_matrix(matcode) &&
            mm_is_sparse(matcode)))
    {
        fprintf(stderr, "Sorry, this application does not support ");
        fprintf(stderr, "Market Market type: [%s]\n",
                mm_typecode_to_str(matcode));
        return -1;
    }
 
    /* find out size of sparse matrix: M, N, nz .... */
 
    if (mm_read_mtx_crd_size(f, &M, &N, &nz) !=0)
    {
        fprintf(stderr, "read_unsymmetric_sparse(): could not parse matrix size.\n");
        return -1;
    }
 
    *M_ = M;
    *N_ = N;
    *nz_ = nz;
 
    /* reseve memory for matrices */
 
    I = (int *) malloc(nz * sizeof(int));
    J = (int *) malloc(nz * sizeof(int));
    val = (double *) malloc(nz * sizeof(double));
 
    *val_ = val;
    *I_ = I;
    *J_ = J;
 
    /* NOTE: when reading in doubles, ANSI C requires the use of the "l"  */
    /*   specifier as in "%lg", "%lf", "%le", otherwise errors will occur */
    /*  (ANSI C X3.159-1989, Sec. 4.9.6.2, p. 136 lines 13-15)            */
 
    for (i=0; i<nz; i++)
    {
        fscanf(f, "%d %d %lg\n", &I[i], &J[i], &val[i]);
        I[i]--;  /* adjust from 1-based to 0-based */
        J[i]--;
    }
    fclose(f);
 
    return 0;
}

int mm_is_valid(MM_typecode matcode)
{
    if (!mm_is_matrix(matcode)) return 0;
    if (mm_is_dense(matcode) && mm_is_pattern(matcode)) return 0;
    if (mm_is_real(matcode) && mm_is_hermitian(matcode)) return 0;
    if (mm_is_pattern(matcode) && (mm_is_hermitian(matcode) || 
                mm_is_skew(matcode))) return 0;
    return 1;
}

int mm_read_banner(FILE *f, MM_typecode *matcode)
{
    char line[MM_MAX_LINE_LENGTH];
    char banner[MM_MAX_TOKEN_LENGTH];
    char mtx[MM_MAX_TOKEN_LENGTH]; 
    char crd[MM_MAX_TOKEN_LENGTH];
    char data_type[MM_MAX_TOKEN_LENGTH];
    char storage_scheme[MM_MAX_TOKEN_LENGTH];
    char *p;


    mm_clear_typecode(matcode);  

    if (fgets(line, MM_MAX_LINE_LENGTH, f) == NULL) 
        return MM_PREMATURE_EOF;

    if (sscanf(line, "%s %s %s %s %s", banner, mtx, crd, data_type, 
        storage_scheme) != 5)
        return MM_PREMATURE_EOF;

    for (p=mtx; *p!='\0'; *p=tolower(*p),p++);  /* convert to lower case */
    for (p=crd; *p!='\0'; *p=tolower(*p),p++);  
    for (p=data_type; *p!='\0'; *p=tolower(*p),p++);
    for (p=storage_scheme; *p!='\0'; *p=tolower(*p),p++);

    /* check for banner */
    if (strncmp(banner, MatrixMarketBanner, strlen(MatrixMarketBanner)) != 0)
        return MM_NO_HEADER;

    /* first field should be "mtx" */
    if (strcmp(mtx, MM_MTX_STR) != 0)
        return  MM_UNSUPPORTED_TYPE;
    mm_set_matrix(matcode);


    /* second field describes whether this is a sparse matrix (in coordinate
            storgae) or a dense array */


    if (strcmp(crd, MM_SPARSE_STR) == 0)
        mm_set_sparse(matcode);
    else
    if (strcmp(crd, MM_DENSE_STR) == 0)
            mm_set_dense(matcode);
    else
        return MM_UNSUPPORTED_TYPE;
    

    /* third field */

    if (strcmp(data_type, MM_REAL_STR) == 0)
        mm_set_real(matcode);
    else
    if (strcmp(data_type, MM_COMPLEX_STR) == 0)
        mm_set_complex(matcode);
    else
    if (strcmp(data_type, MM_PATTERN_STR) == 0)
        mm_set_pattern(matcode);
    else
    if (strcmp(data_type, MM_INT_STR) == 0)
        mm_set_integer(matcode);
    else
        return MM_UNSUPPORTED_TYPE;
    

    /* fourth field */

    if (strcmp(storage_scheme, MM_GENERAL_STR) == 0)
        mm_set_general(matcode);
    else
    if (strcmp(storage_scheme, MM_SYMM_STR) == 0)
        mm_set_symmetric(matcode);
    else
    if (strcmp(storage_scheme, MM_HERM_STR) == 0)
        mm_set_hermitian(matcode);
    else
    if (strcmp(storage_scheme, MM_SKEW_STR) == 0)
        mm_set_skew(matcode);
    else
        return MM_UNSUPPORTED_TYPE;
        

    return 0;
}

int mm_write_mtx_crd_size(FILE *f, int M, int N, int nz)
{
    if (fprintf(f, "%d %d %d\n", M, N, nz) != 3)
        return MM_COULD_NOT_WRITE_FILE;
    else 
        return 0;
}

int mm_read_mtx_crd_size(FILE *f, int *M, int *N, int *nz )
{
    char line[MM_MAX_LINE_LENGTH];
    int num_items_read;

    /* set return null parameter values, in case we exit with errors */
    *M = *N = *nz = 0;

    /* now continue scanning until you reach the end-of-comments */
    do 
    {
        if (fgets(line,MM_MAX_LINE_LENGTH,f) == NULL) 
            return MM_PREMATURE_EOF;
    }while (line[0] == '%');

    /* line[] is either blank or has M,N, nz */
    if (sscanf(line, "%d %d %d", M, N, nz) == 3)
        return 0;
        
    else
    do
    { 
        num_items_read = fscanf(f, "%d %d %d", M, N, nz); 
        if (num_items_read == EOF) return MM_PREMATURE_EOF;
    }
    while (num_items_read != 3);

    return 0;
}


int mm_read_mtx_array_size(FILE *f, int *M, int *N)
{
    char line[MM_MAX_LINE_LENGTH];
    int num_items_read;
    /* set return null parameter values, in case we exit with errors */
    *M = *N = 0;
	
    /* now continue scanning until you reach the end-of-comments */
    do 
    {
        if (fgets(line,MM_MAX_LINE_LENGTH,f) == NULL) 
            return MM_PREMATURE_EOF;
    }while (line[0] == '%');

    /* line[] is either blank or has M,N, nz */
    if (sscanf(line, "%d %d", M, N) == 2)
        return 0;
        
    else /* we have a blank line */
    do
    { 
        num_items_read = fscanf(f, "%d %d", M, N); 
        if (num_items_read == EOF) return MM_PREMATURE_EOF;
    }
    while (num_items_read != 2);

    return 0;
}

int mm_write_mtx_array_size(FILE *f, int M, int N)
{
    if (fprintf(f, "%d %d\n", M, N) != 2)
        return MM_COULD_NOT_WRITE_FILE;
    else 
        return 0;
}



/*-------------------------------------------------------------------------*/

/******************************************************************/
/* use when I[], J[], and val[]J, and val[] are already allocated */
/******************************************************************/

int mm_read_mtx_crd_data(FILE *f, int M, int N, int nz, int I[], int J[],
        double val[], MM_typecode matcode)
{
    int i;
    if (mm_is_complex(matcode))
    {
        for (i=0; i<nz; i++)
            if (fscanf(f, "%d %d %lg %lg", &I[i], &J[i], &val[2*i], &val[2*i+1])
                != 4) return MM_PREMATURE_EOF;
    }
    else if (mm_is_real(matcode))
    {
        for (i=0; i<nz; i++)
        {
            if (fscanf(f, "%d %d %lg\n", &I[i], &J[i], &val[i])
                != 3) return MM_PREMATURE_EOF;

        }
    }

    else if (mm_is_pattern(matcode))
    {
        for (i=0; i<nz; i++)
            if (fscanf(f, "%d %d", &I[i], &J[i])
                != 2) return MM_PREMATURE_EOF;
    }
    else
        return MM_UNSUPPORTED_TYPE;

    return 0;
        
}

int mm_read_mtx_crd_entry(FILE *f, int *I, int *J,
        double *real, double *imag, MM_typecode matcode)
{
    if (mm_is_complex(matcode))
    {
            if (fscanf(f, "%d %d %lg %lg", I, J, real, imag)
                != 4) return MM_PREMATURE_EOF;
    }
    else if (mm_is_real(matcode))
    {
            if (fscanf(f, "%d %d %lg\n", I, J, real)
                != 3) return MM_PREMATURE_EOF;

    }

    else if (mm_is_pattern(matcode))
    {
            if (fscanf(f, "%d %d", I, J) != 2) return MM_PREMATURE_EOF;
    }
    else
        return MM_UNSUPPORTED_TYPE;

    return 0;
        
}


/************************************************************************
    mm_read_mtx_crd()  fills M, N, nz, array of values, and return
                        type code, e.g. 'MCRS'

                        if matrix is complex, values[] is of size 2*nz,
                            (nz pairs of real/imaginary values)
************************************************************************/

int mm_read_mtx_crd(char *fname, int *M, int *N, int *nz, int **I, int **J, 
        double **val, MM_typecode *matcode)
{
    int ret_code;
    FILE *f;

    if (strcmp(fname, "stdin") == 0) f=stdin;
    else
    if ((f = fopen(fname, "r")) == NULL)
        return MM_COULD_NOT_READ_FILE;


    if ((ret_code = mm_read_banner(f, matcode)) != 0)
        return ret_code;

    if (!(mm_is_valid(*matcode) && mm_is_sparse(*matcode) && 
            mm_is_matrix(*matcode)))
        return MM_UNSUPPORTED_TYPE;

    if ((ret_code = mm_read_mtx_crd_size(f, M, N, nz)) != 0)
        return ret_code;


    *I = (int *)  malloc(*nz * sizeof(int));
    *J = (int *)  malloc(*nz * sizeof(int));
    *val = NULL;

    if (mm_is_complex(*matcode))
    {
        *val = (double *) malloc(*nz * 2 * sizeof(double));
        ret_code = mm_read_mtx_crd_data(f, *M, *N, *nz, *I, *J, *val, 
                *matcode);
        if (ret_code != 0) return ret_code;
    }
    else if (mm_is_real(*matcode))
    {
        *val = (double *) malloc(*nz * sizeof(double));
        ret_code = mm_read_mtx_crd_data(f, *M, *N, *nz, *I, *J, *val, 
                *matcode);
        if (ret_code != 0) return ret_code;
    }

    else if (mm_is_pattern(*matcode))
    {
        ret_code = mm_read_mtx_crd_data(f, *M, *N, *nz, *I, *J, *val, 
                *matcode);
        if (ret_code != 0) return ret_code;
    }

    if (f != stdin) fclose(f);
    return 0;
}

int mm_write_banner(FILE *f, MM_typecode matcode)
{
    char *str = mm_typecode_to_str(matcode);
    int ret_code;

    ret_code = fprintf(f, "%s %s\n", MatrixMarketBanner, str);
    free(str);
    if (ret_code !=2 )
        return MM_COULD_NOT_WRITE_FILE;
    else
        return 0;
}

int mm_write_mtx_crd(char fname[], int M, int N, int nz, int I[], int J[],
        double val[], MM_typecode matcode)
{
    FILE *f;
    int i;

    if (strcmp(fname, "stdout") == 0) 
        f = stdout;
    else
    if ((f = fopen(fname, "w")) == NULL)
        return MM_COULD_NOT_WRITE_FILE;
    
    /* print banner followed by typecode */
    fprintf(f, "%s ", MatrixMarketBanner);
    fprintf(f, "%s\n", mm_typecode_to_str(matcode));

    /* print matrix sizes and nonzeros */
    fprintf(f, "%d %d %d\n", M, N, nz);

    /* print values */
    if (mm_is_pattern(matcode))
        for (i=0; i<nz; i++)
            fprintf(f, "%d %d\n", I[i], J[i]);
    else
    if (mm_is_real(matcode))
        for (i=0; i<nz; i++)
            fprintf(f, "%d %d %20.16g\n", I[i], J[i], val[i]);
    else
    if (mm_is_complex(matcode))
        for (i=0; i<nz; i++)
            fprintf(f, "%d %d %20.16g %20.16g\n", I[i], J[i], val[2*i], 
                        val[2*i+1]);
    else
    {
        if (f != stdout) fclose(f);
        return MM_UNSUPPORTED_TYPE;
    }

    if (f !=stdout) fclose(f);

    return 0;
}
  

/**
*  Create a new copy of a string s.  mm_strdup() is a common routine, but
*  not part of ANSI C, so it is included here.  Used by mm_typecode_to_str().
*
*/
char *mm_strdup(const char *s)
{
	int len = strlen(s);
	char *s2 = (char *) malloc((len+1)*sizeof(char));
	return strcpy(s2, s);
}

char  *mm_typecode_to_str(MM_typecode matcode)
{
    char buffer[MM_MAX_LINE_LENGTH];
    char *types[4];
	char *mm_strdup(const char *);
    int error =0;

    /* check for MTX type */
    if (mm_is_matrix(matcode)) 
        types[0] = MM_MTX_STR;
    else
        error=1;

    /* check for CRD or ARR matrix */
    if (mm_is_sparse(matcode))
        types[1] = MM_SPARSE_STR;
    else
    if (mm_is_dense(matcode))
        types[1] = MM_DENSE_STR;
    else
        return NULL;

    /* check for element data type */
    if (mm_is_real(matcode))
        types[2] = MM_REAL_STR;
    else
    if (mm_is_complex(matcode))
        types[2] = MM_COMPLEX_STR;
    else
    if (mm_is_pattern(matcode))
        types[2] = MM_PATTERN_STR;
    else
    if (mm_is_integer(matcode))
        types[2] = MM_INT_STR;
    else
        return NULL;


    /* check for symmetry type */
    if (mm_is_general(matcode))
        types[3] = MM_GENERAL_STR;
    else
    if (mm_is_symmetric(matcode))
        types[3] = MM_SYMM_STR;
    else 
    if (mm_is_hermitian(matcode))
        types[3] = MM_HERM_STR;
    else 
    if (mm_is_skew(matcode))
        types[3] = MM_SKEW_STR;
    else
        return NULL;

    sprintf(buffer,"%s %s %s %s", types[0], types[1], types[2], types[3]);
    return mm_strdup(buffer);

}
