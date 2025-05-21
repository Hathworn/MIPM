#ifndef _MAIN_H_
#define _MAIN_H_

/*############################################################################*/

#include "parboil.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include <float.h>

#include <sys/stat.h>

#ifndef __MCUDA__
#include <hip/hip_runtime.h>
#else
#include <mcuda.h>
#endif

#define DFL1 (1.0f/ 3.0f)
#define DFL2 (1.0f/18.0f)
#define DFL3 (1.0f/36.0f)
#define REAL_MARGIN (CALC_INDEX(0, 0, 2, 0) - CALC_INDEX(0,0,0,0))
#define TOTAL_MARGIN (2*PADDED_X*PADDED_Y*N_CELL_ENTRIES)

/*############################################################################*/

typedef struct {
	int nTimeSteps;
	char* resultFilename;
	char* obstacleFilename;
} MAIN_Param;

/*############################################################################*/

void MAIN_parseCommandLine( int nArgs, char* arg[], MAIN_Param* param, struct pb_Parameters* );
void MAIN_printInfo( const MAIN_Param* param );
void MAIN_initialize( const MAIN_Param* param );
void MAIN_finalize( const MAIN_Param* param );

/*############################################################################*/

#ifndef __MCUDA__
#define CUDA_ERRCK                                                      \
  {hipError_t err;                                                     \
    if ((err = hipGetLastError()) != hipSuccess) {                    \
      fprintf(stderr, "CUDA error on line %d: %s\n", __LINE__, hipGetErrorString(err)); \
      exit(-1);                                                         \
    }                                                                   \
  }
#else
#define CUDA_ERRCK
#endif

#endif /* _MAIN_H_ */

#ifndef _LBM_H_
#define _LBM_H_

/*############################################################################*/


/*############################################################################*/

typedef enum {C = 0,
              N, S, E, W, T, B,
              NE, NW, SE, SW,
              NT, NB, ST, SB,
              ET, EB, WT, WB,
              FLAGS, N_CELL_ENTRIES} CELL_ENTRIES;
#define N_DISTR_FUNCS FLAGS

typedef enum {OBSTACLE    = 1 << 0,
              ACCEL       = 1 << 1,
              IN_OUT_FLOW = 1 << 2} CELL_FLAGS;


#ifndef _LAYOUT_CONFIG_H_
#define _LAYOUT_CONFIG_H_

/*############################################################################*/

//Unchangeable settings: volume simulation size for the given example
#define SIZE_X (120)
#define SIZE_Y (120)
#define SIZE_Z (150)

//Changeable settings
//Padding in each dimension
//Note that the padding in the highest Cartesian dimension 
// must be at least 4 to simplify the kernel by avoiding 
// out-of-bounds access checks.
#define PADDING_X (8)
#define PADDING_Y (0)
#define PADDING_Z (4)

//Pitch in each dimension
#define PADDED_X (SIZE_X+PADDING_X)
#define PADDED_Y (SIZE_Y+PADDING_Y)
#define PADDED_Z (SIZE_Z+PADDING_Z)

#define TOTAL_CELLS (SIZE_X*SIZE_Y*(SIZE_Z))
#define TOTAL_PADDED_CELLS (PADDED_X*PADDED_Y*PADDED_Z)

//Flattening function
//  This macro will be used to map a 3-D index and element to a value
//  The macro below implements the equivalent of a 3-D array of 
//  20-element structures in C standard layout.
#define CALC_INDEX(x,y,z,e) ( e + N_CELL_ENTRIES*\
                               ((x)+(y)*PADDED_X+(z)*PADDED_X*PADDED_Y) )

// Set this value to 1 for GATHER, or 0 for SCATTER
#if 0
#define GATHER
#else
#define SCATTER
#endif

//CUDA block size (not trivially changeable here)
#define BLOCK_SIZE SIZE_X

/*############################################################################*/

#endif /* _CONFIG_H_ */

#ifndef _LBM_MARCOS_H
#define _LBM_MACROS_H_

#define OMEGA (1.95f)

#define OUTPUT_PRECISION float

#define BOOL int
#define TRUE (-1)
#define FALSE (0)

/*############################################################################*/

typedef float* LBM_Grid;//float LBM_Grid[PADDED_Z*PADDED_Y*PADDED_X*N_CELL_ENTRIES];
typedef LBM_Grid* LBM_GridPtr;

/*############################################################################*/


#define SWEEP_X  __temp_x__
#define SWEEP_Y  __temp_y__
#define SWEEP_Z  __temp_z__
#define SWEEP_VAR int __temp_x__, __temp_y__, __temp_z__;

#define SWEEP_START(x1,y1,z1,x2,y2,z2) \
	for( __temp_z__ = z1; \
	     __temp_z__ < z2; \
		__temp_z__++) { \
            for( __temp_y__ = 0; \
                 __temp_y__ < SIZE_Y; \
                 __temp_y__++) { \
		for(__temp_x__ = 0; \
	            __temp_x__ < SIZE_X; \
                    __temp_x__++) { \

#define SWEEP_END }}}


#define GRID_ENTRY(g,x,y,z,e)          ((g)[CALC_INDEX( x,  y,  z, e)])
#define GRID_ENTRY_SWEEP(g,dx,dy,dz,e) ((g)[CALC_INDEX((dx)+SWEEP_X, (dy)+SWEEP_Y, (dz)+SWEEP_Z, e)])

#define LOCAL(g,e)       (GRID_ENTRY_SWEEP( g,  0,  0,  0, e ))
#define NEIGHBOR_C(g,e)  (GRID_ENTRY_SWEEP( g,  0,  0,  0, e ))
#define NEIGHBOR_N(g,e)  (GRID_ENTRY_SWEEP( g,  0, +1,  0, e ))
#define NEIGHBOR_S(g,e)  (GRID_ENTRY_SWEEP( g,  0, -1,  0, e ))
#define NEIGHBOR_E(g,e)  (GRID_ENTRY_SWEEP( g, +1,  0,  0, e ))
#define NEIGHBOR_W(g,e)  (GRID_ENTRY_SWEEP( g, -1,  0,  0, e ))
#define NEIGHBOR_T(g,e)  (GRID_ENTRY_SWEEP( g,  0,  0, +1, e ))
#define NEIGHBOR_B(g,e)  (GRID_ENTRY_SWEEP( g,  0,  0, -1, e ))
#define NEIGHBOR_NE(g,e) (GRID_ENTRY_SWEEP( g, +1, +1,  0, e ))
#define NEIGHBOR_NW(g,e) (GRID_ENTRY_SWEEP( g, -1, +1,  0, e ))
#define NEIGHBOR_SE(g,e) (GRID_ENTRY_SWEEP( g, +1, -1,  0, e ))
#define NEIGHBOR_SW(g,e) (GRID_ENTRY_SWEEP( g, -1, -1,  0, e ))
#define NEIGHBOR_NT(g,e) (GRID_ENTRY_SWEEP( g,  0, +1, +1, e ))
#define NEIGHBOR_NB(g,e) (GRID_ENTRY_SWEEP( g,  0, +1, -1, e ))
#define NEIGHBOR_ST(g,e) (GRID_ENTRY_SWEEP( g,  0, -1, +1, e ))
#define NEIGHBOR_SB(g,e) (GRID_ENTRY_SWEEP( g,  0, -1, -1, e ))
#define NEIGHBOR_ET(g,e) (GRID_ENTRY_SWEEP( g, +1,  0, +1, e ))
#define NEIGHBOR_EB(g,e) (GRID_ENTRY_SWEEP( g, +1,  0, -1, e ))
#define NEIGHBOR_WT(g,e) (GRID_ENTRY_SWEEP( g, -1,  0, +1, e ))
#define NEIGHBOR_WB(g,e) (GRID_ENTRY_SWEEP( g, -1,  0, -1, e ))


#ifdef SCATTER

#define SRC_C(g)  (LOCAL( g, C  ))
#define SRC_N(g)  (LOCAL( g, N  ))
#define SRC_S(g)  (LOCAL( g, S  ))
#define SRC_E(g)  (LOCAL( g, E  ))
#define SRC_W(g)  (LOCAL( g, W  ))
#define SRC_T(g)  (LOCAL( g, T  ))
#define SRC_B(g)  (LOCAL( g, B  ))
#define SRC_NE(g) (LOCAL( g, NE ))
#define SRC_NW(g) (LOCAL( g, NW ))
#define SRC_SE(g) (LOCAL( g, SE ))
#define SRC_SW(g) (LOCAL( g, SW ))
#define SRC_NT(g) (LOCAL( g, NT ))
#define SRC_NB(g) (LOCAL( g, NB ))
#define SRC_ST(g) (LOCAL( g, ST ))
#define SRC_SB(g) (LOCAL( g, SB ))
#define SRC_ET(g) (LOCAL( g, ET ))
#define SRC_EB(g) (LOCAL( g, EB ))
#define SRC_WT(g) (LOCAL( g, WT ))
#define SRC_WB(g) (LOCAL( g, WB ))

#define DST_C(g)  (NEIGHBOR_C ( g, C  ))
#define DST_N(g)  (NEIGHBOR_N ( g, N  ))
#define DST_S(g)  (NEIGHBOR_S ( g, S  ))
#define DST_E(g)  (NEIGHBOR_E ( g, E  ))
#define DST_W(g)  (NEIGHBOR_W ( g, W  ))
#define DST_T(g)  (NEIGHBOR_T ( g, T  ))
#define DST_B(g)  (NEIGHBOR_B ( g, B  ))
#define DST_NE(g) (NEIGHBOR_NE( g, NE ))
#define DST_NW(g) (NEIGHBOR_NW( g, NW ))
#define DST_SE(g) (NEIGHBOR_SE( g, SE ))
#define DST_SW(g) (NEIGHBOR_SW( g, SW ))
#define DST_NT(g) (NEIGHBOR_NT( g, NT ))
#define DST_NB(g) (NEIGHBOR_NB( g, NB ))
#define DST_ST(g) (NEIGHBOR_ST( g, ST ))
#define DST_SB(g) (NEIGHBOR_SB( g, SB ))
#define DST_ET(g) (NEIGHBOR_ET( g, ET ))
#define DST_EB(g) (NEIGHBOR_EB( g, EB ))
#define DST_WT(g) (NEIGHBOR_WT( g, WT ))
#define DST_WB(g) (NEIGHBOR_WB( g, WB ))

#else /* SCATTER */

#define SRC_C(g)  (NEIGHBOR_C ( g, C  ))
#define SRC_N(g)  (NEIGHBOR_S ( g, N  ))
#define SRC_S(g)  (NEIGHBOR_N ( g, S  ))
#define SRC_E(g)  (NEIGHBOR_W ( g, E  ))
#define SRC_W(g)  (NEIGHBOR_E ( g, W  ))
#define SRC_T(g)  (NEIGHBOR_B ( g, T  ))
#define SRC_B(g)  (NEIGHBOR_T ( g, B  ))
#define SRC_NE(g) (NEIGHBOR_SW( g, NE ))
#define SRC_NW(g) (NEIGHBOR_SE( g, NW ))
#define SRC_SE(g) (NEIGHBOR_NW( g, SE ))
#define SRC_SW(g) (NEIGHBOR_NE( g, SW ))
#define SRC_NT(g) (NEIGHBOR_SB( g, NT ))
#define SRC_NB(g) (NEIGHBOR_ST( g, NB ))
#define SRC_ST(g) (NEIGHBOR_NB( g, ST ))
#define SRC_SB(g) (NEIGHBOR_NT( g, SB ))
#define SRC_ET(g) (NEIGHBOR_WB( g, ET ))
#define SRC_EB(g) (NEIGHBOR_WT( g, EB ))
#define SRC_WT(g) (NEIGHBOR_EB( g, WT ))
#define SRC_WB(g) (NEIGHBOR_ET( g, WB ))

#define DST_C(g)  (LOCAL( g, C  ))
#define DST_N(g)  (LOCAL( g, N  ))
#define DST_S(g)  (LOCAL( g, S  ))
#define DST_E(g)  (LOCAL( g, E  ))
#define DST_W(g)  (LOCAL( g, W  ))
#define DST_T(g)  (LOCAL( g, T  ))
#define DST_B(g)  (LOCAL( g, B  ))
#define DST_NE(g) (LOCAL( g, NE ))
#define DST_NW(g) (LOCAL( g, NW ))
#define DST_SE(g) (LOCAL( g, SE ))
#define DST_SW(g) (LOCAL( g, SW ))
#define DST_NT(g) (LOCAL( g, NT ))
#define DST_NB(g) (LOCAL( g, NB ))
#define DST_ST(g) (LOCAL( g, ST ))
#define DST_SB(g) (LOCAL( g, SB ))
#define DST_ET(g) (LOCAL( g, ET ))
#define DST_EB(g) (LOCAL( g, EB ))
#define DST_WT(g) (LOCAL( g, WT ))
#define DST_WB(g) (LOCAL( g, WB ))

#endif /* SCATTER */

#define MAGIC_CAST(v) ((unsigned int*) ((void*) (&(v))))
#define FLAG_VAR(v) unsigned int* _aux_ = MAGIC_CAST(v)

#define TEST_FLAG_SWEEP(g,f)     ((*MAGIC_CAST(LOCAL(g, FLAGS))) & (f))
#define SET_FLAG_SWEEP(g,f)      {FLAG_VAR(LOCAL(g, FLAGS)); (*_aux_) |=  (f);}
#define CLEAR_FLAG_SWEEP(g,f)    {FLAG_VAR(LOCAL(g, FLAGS)); (*_aux_) &= ~(f);}
#define CLEAR_ALL_FLAGS_SWEEP(g) {FLAG_VAR(LOCAL(g, FLAGS)); (*_aux_)  =    0;}

#define TEST_FLAG(g,x,y,z,f)     ((*MAGIC_CAST(GRID_ENTRY(g, x, y, z, FLAGS))) & (f))
#define SET_FLAG(g,x,y,z,f)      {FLAG_VAR(GRID_ENTRY(g, x, y, z, FLAGS)); (*_aux_) |=  (f);}
#define CLEAR_FLAG(g,x,y,z,f)    {FLAG_VAR(GRID_ENTRY(g, x, y, z, FLAGS)); (*_aux_) &= ~(f);}
#define CLEAR_ALL_FLAGS(g,x,y,z) {FLAG_VAR(GRID_ENTRY(g, x, y, z, FLAGS)); (*_aux_)  =    0;}

/*############################################################################*/

#endif /* _CONFIG_H_ */

#ifdef __cplusplus
extern "C" {
#endif
void LBM_allocateGrid( float** ptr );
void LBM_freeGrid( float** ptr );
void LBM_initializeGrid( LBM_Grid grid );
void LBM_initializeSpecialCellsForLDC( LBM_Grid grid );
void LBM_loadObstacleFile( LBM_Grid grid, const char* filename );
void LBM_swapGrids( LBM_GridPtr grid1, LBM_GridPtr grid2 );
void LBM_showGridStatistics( LBM_Grid Grid );
void LBM_storeVelocityField( LBM_Grid grid, const char* filename,
                           const BOOL binary );

/* CUDA ***********************************************************************/

void CUDA_LBM_allocateGrid( float** ptr );
void CUDA_LBM_freeGrid( float** ptr );
void CUDA_LBM_initializeGrid( float** d_grid, float** h_grid );
void CUDA_LBM_getDeviceGrid( float** d_grid, float** h_grid );
void CUDA_LBM_performStreamCollide( LBM_Grid srcGrid, LBM_Grid dstGrid );
#ifdef __cplusplus
}
#endif

/*############################################################################*/

#endif /* _LBM_H_ */



static LBM_Grid CUDA_srcGrid, CUDA_dstGrid;


#ifndef LBM_KERNEL_CU
#define LBM_KERNEL_CU

__global__ void performStreamCollide_kernel( float* srcGrid, float* dstGrid ) 
{

	//Using some predefined macros here.  Consider this the declaration 
        //  and initialization of the variables SWEEP_X, SWEEP_Y and SWEEP_Z

        SWEEP_VAR
        SWEEP_X = threadIdx.x;
        SWEEP_Y = blockIdx.x;
        SWEEP_Z = blockIdx.y;

	float temp_swp, tempC, tempN, tempS, tempE, tempW, tempT, tempB;
	float tempNE, tempNW, tempSE, tempSW, tempNT, tempNB, tempST ;
	float tempSB, tempET, tempEB, tempWT, tempWB ;

	//Load all of the input fields
	//This is a gather operation of the SCATTER preprocessor variable
        // is undefined in layout_config.h, or a "local" read otherwise
	tempC = SRC_C(srcGrid);
	tempN = SRC_N(srcGrid);
	tempS = SRC_S(srcGrid);
	tempE = SRC_E(srcGrid);
	tempW = SRC_W(srcGrid);
	tempT = SRC_T(srcGrid);
	tempB = SRC_B(srcGrid);
	tempNE= SRC_NE(srcGrid);
	tempNW= SRC_NW(srcGrid);
	tempSE = SRC_SE(srcGrid);
	tempSW = SRC_SW(srcGrid);
	tempNT = SRC_NT(srcGrid);
	tempNB = SRC_NB(srcGrid);
	tempST = SRC_ST(srcGrid);
	tempSB = SRC_SB(srcGrid);
	tempET = SRC_ET(srcGrid);
	tempEB = SRC_EB(srcGrid);
	tempWT = SRC_WT(srcGrid);
	tempWB = SRC_WB(srcGrid);

	//Test whether the cell is fluid or obstacle
	if( TEST_FLAG_SWEEP( srcGrid, OBSTACLE )) {
		//Swizzle the inputs: reflect any fluid coming into this cell 
		// back to where it came from
		temp_swp = tempN ; tempN = tempS ; tempS = temp_swp ;
		temp_swp = tempE ; tempE = tempW ; tempW = temp_swp;
		temp_swp = tempT ; tempT = tempB ; tempB = temp_swp;
		temp_swp = tempNE; tempNE = tempSW ; tempSW = temp_swp;
		temp_swp = tempNW; tempNW = tempSE ; tempSE = temp_swp;
		temp_swp = tempNT ; tempNT = tempSB ; tempSB = temp_swp; 
		temp_swp = tempNB ; tempNB = tempST ; tempST = temp_swp;
		temp_swp = tempET ; tempET= tempWB ; tempWB = temp_swp;
		temp_swp = tempEB ; tempEB = tempWT ; tempWT = temp_swp;
	}
	else {
                //The math meat of LBM: ignore for optimization
	        float ux, uy, uz, rho, u2;
		float temp1, temp2, temp_base;
		rho = tempC + tempN
			+ tempS + tempE
			+ tempW + tempT
			+ tempB + tempNE
			+ tempNW + tempSE
			+ tempSW + tempNT
			+ tempNB + tempST
			+ tempSB + tempET
			+ tempEB + tempWT
			+ tempWB;

		ux = + tempE - tempW
			+ tempNE - tempNW
			+ tempSE - tempSW
			+ tempET + tempEB
			- tempWT - tempWB;
		uy = + tempN - tempS
			+ tempNE + tempNW
			- tempSE - tempSW
			+ tempNT + tempNB
			- tempST - tempSB;
		uz = + tempT - tempB
			+ tempNT - tempNB
			+ tempST - tempSB
			+ tempET - tempEB
			+ tempWT - tempWB;

		ux /= rho;
		uy /= rho;
		uz /= rho;
		if( TEST_FLAG_SWEEP( srcGrid, ACCEL )) {
			ux = 0.005f;
			uy = 0.002f;
			uz = 0.000f;
		}
		u2 = 1.5f * (ux*ux + uy*uy + uz*uz) - 1.0f;
		temp_base = OMEGA*rho;
		temp1 = DFL1*temp_base;


		//Put the output values for this cell in the shared memory
		temp_base = OMEGA*rho;
		temp1 = DFL1*temp_base;
		temp2 = 1.0f-OMEGA;
		tempC = temp2*tempC + temp1*(                                 - u2);
	        temp1 = DFL2*temp_base;	
		tempN = temp2*tempN + temp1*(       uy*(4.5f*uy       + 3.0f) - u2);
		tempS = temp2*tempS + temp1*(       uy*(4.5f*uy       - 3.0f) - u2);
		tempT = temp2*tempT + temp1*(       uz*(4.5f*uz       + 3.0f) - u2);
		tempB = temp2*tempB + temp1*(       uz*(4.5f*uz       - 3.0f) - u2);
		tempE = temp2*tempE + temp1*(       ux*(4.5f*ux       + 3.0f) - u2);
		tempW = temp2*tempW + temp1*(       ux*(4.5f*ux       - 3.0f) - u2);
		temp1 = DFL3*temp_base;
		tempNT= temp2*tempNT + temp1 *( (+uy+uz)*(4.5f*(+uy+uz) + 3.0f) - u2);
		tempNB= temp2*tempNB + temp1 *( (+uy-uz)*(4.5f*(+uy-uz) + 3.0f) - u2);
		tempST= temp2*tempST + temp1 *( (-uy+uz)*(4.5f*(-uy+uz) + 3.0f) - u2);
		tempSB= temp2*tempSB + temp1 *( (-uy-uz)*(4.5f*(-uy-uz) + 3.0f) - u2);
		tempNE = temp2*tempNE + temp1 *( (+ux+uy)*(4.5f*(+ux+uy) + 3.0f) - u2);
		tempSE = temp2*tempSE + temp1 *((+ux-uy)*(4.5f*(+ux-uy) + 3.0f) - u2);
		tempET = temp2*tempET + temp1 *( (+ux+uz)*(4.5f*(+ux+uz) + 3.0f) - u2);
		tempEB = temp2*tempEB + temp1 *( (+ux-uz)*(4.5f*(+ux-uz) + 3.0f) - u2);
		tempNW = temp2*tempNW + temp1 *( (-ux+uy)*(4.5f*(-ux+uy) + 3.0f) - u2);
		tempSW = temp2*tempSW + temp1 *( (-ux-uy)*(4.5f*(-ux-uy) + 3.0f) - u2);
		tempWT = temp2*tempWT + temp1 *( (-ux+uz)*(4.5f*(-ux+uz) + 3.0f) - u2);
		tempWB = temp2*tempWB + temp1 *( (-ux-uz)*(4.5f*(-ux-uz) + 3.0f) - u2);
	}

	//Write the results computed above
	//This is a scatter operation of the SCATTER preprocessor variable
        // is defined in layout_config.h, or a "local" write otherwise
	DST_C ( dstGrid ) = tempC;

	DST_N ( dstGrid ) = tempN; 
	DST_S ( dstGrid ) = tempS;
	DST_E ( dstGrid ) = tempE;
	DST_W ( dstGrid ) = tempW;
	DST_T ( dstGrid ) = tempT;
	DST_B ( dstGrid ) = tempB;

	DST_NE( dstGrid ) = tempNE;
	DST_NW( dstGrid ) = tempNW;
	DST_SE( dstGrid ) = tempSE;
	DST_SW( dstGrid ) = tempSW;
	DST_NT( dstGrid ) = tempNT;
	DST_NB( dstGrid ) = tempNB;
	DST_ST( dstGrid ) = tempST;
	DST_SB( dstGrid ) = tempSB;
	DST_ET( dstGrid ) = tempET;
	DST_EB( dstGrid ) = tempEB;
	DST_WT( dstGrid ) = tempWT;
	DST_WB( dstGrid ) = tempWB;
}

#endif // LBM_KERNEL_CU



/*############################################################################*/

struct pb_TimerSet timers;
int main( int nArgs, char* arg[] ) {
	MAIN_Param param;
	int t;

	pb_InitializeTimerSet(&timers);
        struct pb_Parameters* params;
        params = pb_ReadParameters(&nArgs, arg);
        

	static LBM_GridPtr TEMP_srcGrid;
	//Setup TEMP datastructures
	LBM_allocateGrid( (float**) &TEMP_srcGrid );
	MAIN_parseCommandLine( nArgs, arg, &param, params );
	MAIN_printInfo( &param );

	MAIN_initialize( &param );

	for( t = 1; t <= param.nTimeSteps; t++ ) {
                pb_SwitchToTimer(&timers, pb_TimerID_KERNEL);
		CUDA_LBM_performStreamCollide( CUDA_srcGrid, CUDA_dstGrid );
                pb_SwitchToTimer(&timers, pb_TimerID_COMPUTE);
		LBM_swapGrids( &CUDA_srcGrid, &CUDA_dstGrid );

		if( (t & 63) == 0 ) {
			printf( "timestep: %i\n", t );
#if 0
			CUDA_LBM_getDeviceGrid((float**)&CUDA_srcGrid, (float**)&TEMP_srcGrid);
			LBM_showGridStatistics( *TEMP_srcGrid );
#endif
		}
	}

	MAIN_finalize( &param );

	LBM_freeGrid( (float**) &TEMP_srcGrid );

        pb_SwitchToTimer(&timers, pb_TimerID_NONE);
        pb_PrintTimerSet(&timers);
        pb_FreeParameters(params);
	return 0;
}

/*############################################################################*/

void MAIN_parseCommandLine( int nArgs, char* arg[], MAIN_Param* param, struct pb_Parameters * params ) {
	struct stat fileStat;

	if( nArgs < 2 ) {
		printf( "syntax: lbm <time steps>\n" );
		exit( 1 );
	}

	param->nTimeSteps     = atoi( arg[1] );

	if( params->inpFiles[0] != NULL ) {
		param->obstacleFilename = params->inpFiles[0];

		if( stat( param->obstacleFilename, &fileStat ) != 0 ) {
			printf( "MAIN_parseCommandLine: cannot stat obstacle file '%s'\n",
					param->obstacleFilename );
			exit( 1 );
		}
		if( fileStat.st_size != SIZE_X*SIZE_Y*SIZE_Z+(SIZE_Y+1)*SIZE_Z ) {
			printf( "MAIN_parseCommandLine:\n"
					"\tsize of file '%s' is %i bytes\n"
					"\texpected size is %i bytes\n",
					param->obstacleFilename, (int) fileStat.st_size,
					SIZE_X*SIZE_Y*SIZE_Z+(SIZE_Y+1)*SIZE_Z );
			exit( 1 );
		}
	}
	else param->obstacleFilename = NULL;

        param->resultFilename = params->outFile;
}

/*############################################################################*/

void MAIN_printInfo( const MAIN_Param* param ) {
	printf( "MAIN_printInfo:\n"
			"\tgrid size      : %i x %i x %i = %.2f * 10^6 Cells\n"
			"\tnTimeSteps     : %i\n"
			"\tresult file    : %s\n"
			"\taction         : %s\n"
			"\tsimulation type: %s\n"
			"\tobstacle file  : %s\n\n",
			SIZE_X, SIZE_Y, SIZE_Z, 1e-6*SIZE_X*SIZE_Y*SIZE_Z,
			param->nTimeSteps, param->resultFilename, 
			"store", "lid-driven cavity",
			(param->obstacleFilename == NULL) ? "<none>" :
			param->obstacleFilename );
}

/*############################################################################*/

void MAIN_initialize( const MAIN_Param* param ) {
	static LBM_Grid TEMP_srcGrid, TEMP_dstGrid;

        pb_SwitchToTimer(&timers, pb_TimerID_COMPUTE);
	//Setup TEMP datastructures
	LBM_allocateGrid( (float**) &TEMP_srcGrid );
	LBM_allocateGrid( (float**) &TEMP_dstGrid );
	LBM_initializeGrid( TEMP_srcGrid );
	LBM_initializeGrid( TEMP_dstGrid );

        pb_SwitchToTimer(&timers, pb_TimerID_IO);
	if( param->obstacleFilename != NULL ) {
		LBM_loadObstacleFile( TEMP_srcGrid, param->obstacleFilename );
		LBM_loadObstacleFile( TEMP_dstGrid, param->obstacleFilename );
	}

        pb_SwitchToTimer(&timers, pb_TimerID_COMPUTE);
	LBM_initializeSpecialCellsForLDC( TEMP_srcGrid );
	LBM_initializeSpecialCellsForLDC( TEMP_dstGrid );

        pb_SwitchToTimer(&timers, pb_TimerID_COPY);
	//Setup DEVICE datastructures
	CUDA_LBM_allocateGrid( (float**) &CUDA_srcGrid );
	CUDA_LBM_allocateGrid( (float**) &CUDA_dstGrid );

	//Initialize DEVICE datastructures
	CUDA_LBM_initializeGrid( (float**)&CUDA_srcGrid, (float**)&TEMP_srcGrid );
	CUDA_LBM_initializeGrid( (float**)&CUDA_dstGrid, (float**)&TEMP_dstGrid );

        pb_SwitchToTimer(&timers, pb_TimerID_COMPUTE);
	LBM_showGridStatistics( TEMP_srcGrid );

	LBM_freeGrid( (float**) &TEMP_srcGrid );
	LBM_freeGrid( (float**) &TEMP_dstGrid );
}

/*############################################################################*/

void MAIN_finalize( const MAIN_Param* param ) {
	LBM_Grid TEMP_srcGrid;

	//Setup TEMP datastructures
	LBM_allocateGrid( (float**) &TEMP_srcGrid );

        pb_SwitchToTimer(&timers, pb_TimerID_COPY);
	CUDA_LBM_getDeviceGrid((float**)&CUDA_srcGrid, (float**)&TEMP_srcGrid);

        pb_SwitchToTimer(&timers, pb_TimerID_COMPUTE);
	LBM_showGridStatistics( TEMP_srcGrid );

	LBM_storeVelocityField( TEMP_srcGrid, param->resultFilename, TRUE );

	LBM_freeGrid( (float**) &TEMP_srcGrid );
	CUDA_LBM_freeGrid( (float**) &CUDA_srcGrid );
	CUDA_LBM_freeGrid( (float**) &CUDA_dstGrid );
}



void CUDA_LBM_performStreamCollide( LBM_Grid srcGrid, LBM_Grid dstGrid ) {
	dim3 dimBlock, dimGrid;
        dimBlock.x = SIZE_X;
	dimGrid.x = SIZE_Y;
	dimGrid.y = SIZE_Z;
	dimBlock.y = dimBlock.z = dimGrid.z = 1;
	performStreamCollide_kernel<<<dimGrid, dimBlock>>>(srcGrid, dstGrid);
  CUDA_ERRCK;
}

/*############################################################################*/

void LBM_allocateGrid( float** ptr ) {
	const size_t size   = TOTAL_PADDED_CELLS*N_CELL_ENTRIES*sizeof( float ) + 2*TOTAL_MARGIN*sizeof( float );

	*ptr = (float*)malloc( size );
	if( ! *ptr ) {
		printf( "LBM_allocateGrid: could not allocate %.1f MByte\n",
				size / (1024.0*1024.0) );
		exit( 1 );
	}

	memset( *ptr, 0, size );

	printf( "LBM_allocateGrid: allocated %.1f MByte\n",
			size / (1024.0*1024.0) );
	*ptr += REAL_MARGIN;
}

/******************************************************************************/

void CUDA_LBM_allocateGrid( float** ptr ) {
	const size_t size = TOTAL_PADDED_CELLS*N_CELL_ENTRIES*sizeof( float ) + 2*TOTAL_MARGIN*sizeof( float );
	hipMalloc((void**)ptr, size);
        CUDA_ERRCK;
	*ptr += REAL_MARGIN;
}

/*############################################################################*/

void LBM_freeGrid( float** ptr ) {
	free( *ptr-REAL_MARGIN );
	*ptr = NULL;
}

/******************************************************************************/

void CUDA_LBM_freeGrid( float** ptr ) {
	hipFree( *ptr-REAL_MARGIN );
	*ptr = NULL;
}

/*############################################################################*/

void LBM_initializeGrid( LBM_Grid grid ) {
	SWEEP_VAR

	SWEEP_START( 0, 0, 0, 0, 0, SIZE_Z )
	SRC_C( grid  ) = DFL1;
	SRC_N( grid  ) = DFL2;
	SRC_S( grid  ) = DFL2;
	SRC_E( grid  ) = DFL2;
	SRC_W( grid  ) = DFL2;
	SRC_T( grid  ) = DFL2;
	SRC_B( grid  ) = DFL2;
	SRC_NE( grid ) = DFL3;
	SRC_NW( grid ) = DFL3;
	SRC_SE( grid ) = DFL3;
	SRC_SW( grid ) = DFL3;
	SRC_NT( grid ) = DFL3;
	SRC_NB( grid ) = DFL3;
	SRC_ST( grid ) = DFL3;
	SRC_SB( grid ) = DFL3;
	SRC_ET( grid ) = DFL3;
	SRC_EB( grid ) = DFL3;
	SRC_WT( grid ) = DFL3;
	SRC_WB( grid ) = DFL3;

	CLEAR_ALL_FLAGS_SWEEP( grid );
	SWEEP_END
}

/******************************************************************************/

void CUDA_LBM_initializeGrid( float** d_grid, float** h_grid ) {
	const size_t size   = TOTAL_PADDED_CELLS*N_CELL_ENTRIES*sizeof( float ) + 2*TOTAL_MARGIN*sizeof( float );

	hipMemcpy(*d_grid - REAL_MARGIN, *h_grid - REAL_MARGIN, size, hipMemcpyHostToDevice);
        CUDA_ERRCK;
}

void CUDA_LBM_getDeviceGrid( float** d_grid, float** h_grid ) {
	const size_t size   = TOTAL_PADDED_CELLS*N_CELL_ENTRIES*sizeof( float ) + 2*TOTAL_MARGIN*sizeof( float );
        hipDeviceSynchronize();
        CUDA_ERRCK;
	hipMemcpy(*h_grid - REAL_MARGIN, *d_grid - REAL_MARGIN, size, hipMemcpyDeviceToHost);
        CUDA_ERRCK;
}

/*############################################################################*/

void LBM_swapGrids( LBM_GridPtr grid1, LBM_GridPtr grid2 ) {
	LBM_Grid aux = *grid1;
	*grid1 = *grid2;
	*grid2 = aux;
}

/*############################################################################*/

void LBM_loadObstacleFile( LBM_Grid grid, const char* filename ) {
	int x,  y,  z;

	FILE* file = fopen( filename, "rb" );

	for( z = 0; z < SIZE_Z; z++ ) {
		for( y = 0; y < SIZE_Y; y++ ) {
			for( x = 0; x < SIZE_X; x++ ) {
				if( fgetc( file ) != '.' ) SET_FLAG( grid, x, y, z, OBSTACLE );
			}
			fgetc( file );
		}
		fgetc( file );
	}

	fclose( file );
}

/*############################################################################*/

void LBM_initializeSpecialCellsForLDC( LBM_Grid grid ) {
	int x,  y,  z;

	for( z = -2; z < SIZE_Z+2; z++ ) {
		for( y = 0; y < SIZE_Y; y++ ) {
			for( x = 0; x < SIZE_X; x++ ) {
				if( x == 0 || x == SIZE_X-1 ||
						y == 0 || y == SIZE_Y-1 ||
						z == 0 || z == SIZE_Z-1 ) {
					SET_FLAG( grid, x, y, z, OBSTACLE );
				}
				else {
					if( (z == 1 || z == SIZE_Z-2) &&
							x > 1 && x < SIZE_X-2 &&
							y > 1 && y < SIZE_Y-2 ) {
						SET_FLAG( grid, x, y, z, ACCEL );
					}
				}
			}
		}
	}
}

/*############################################################################*/

void LBM_showGridStatistics( LBM_Grid grid ) {
	int nObstacleCells = 0,
	    nAccelCells    = 0,
	    nFluidCells    = 0;
	float ux, uy, uz;
	float minU2  = 1e+30, maxU2  = -1e+30, u2;
	float minRho = 1e+30, maxRho = -1e+30, rho;
	float mass = 0;

	SWEEP_VAR

		SWEEP_START( 0, 0, 0, 0, 0, SIZE_Z )
		rho = LOCAL( grid, C  ) + LOCAL( grid, N  )
		+ LOCAL( grid, S  ) + LOCAL( grid, E  )
		+ LOCAL( grid, W  ) + LOCAL( grid, T  )
		+ LOCAL( grid, B  ) + LOCAL( grid, NE )
		+ LOCAL( grid, NW ) + LOCAL( grid, SE )
		+ LOCAL( grid, SW ) + LOCAL( grid, NT )
		+ LOCAL( grid, NB ) + LOCAL( grid, ST )
		+ LOCAL( grid, SB ) + LOCAL( grid, ET )
		+ LOCAL( grid, EB ) + LOCAL( grid, WT )
		+ LOCAL( grid, WB );
	if( rho < minRho ) minRho = rho;
	if( rho > maxRho ) maxRho = rho;
	mass += rho;

	if( TEST_FLAG_SWEEP( grid, OBSTACLE )) {
		nObstacleCells++;
	}
	else {
		if( TEST_FLAG_SWEEP( grid, ACCEL ))
			nAccelCells++;
		else
			nFluidCells++;

		ux = + LOCAL( grid, E  ) - LOCAL( grid, W  )
			+ LOCAL( grid, NE ) - LOCAL( grid, NW )
			+ LOCAL( grid, SE ) - LOCAL( grid, SW )
			+ LOCAL( grid, ET ) + LOCAL( grid, EB )
			- LOCAL( grid, WT ) - LOCAL( grid, WB );
		uy = + LOCAL( grid, N  ) - LOCAL( grid, S  )
			+ LOCAL( grid, NE ) + LOCAL( grid, NW )
			- LOCAL( grid, SE ) - LOCAL( grid, SW )
			+ LOCAL( grid, NT ) + LOCAL( grid, NB )
			- LOCAL( grid, ST ) - LOCAL( grid, SB );
		uz = + LOCAL( grid, T  ) - LOCAL( grid, B  )
			+ LOCAL( grid, NT ) - LOCAL( grid, NB )
			+ LOCAL( grid, ST ) - LOCAL( grid, SB )
			+ LOCAL( grid, ET ) - LOCAL( grid, EB )
			+ LOCAL( grid, WT ) - LOCAL( grid, WB );
		u2 = (ux*ux + uy*uy + uz*uz) / (rho*rho);
		if( u2 < minU2 ) minU2 = u2;
		if( u2 > maxU2 ) maxU2 = u2;
	}
	SWEEP_END

		printf( "LBM_showGridStatistics:\n"
				"\tnObstacleCells: %7i nAccelCells: %7i nFluidCells: %7i\n"
				"\tminRho: %8.4f maxRho: %8.4f mass: %e\n"
				"\tminU: %e maxU: %e\n\n",
				nObstacleCells, nAccelCells, nFluidCells,
				minRho, maxRho, mass,
				sqrt( minU2 ), sqrt( maxU2 ) );

}

/*############################################################################*/

static void storeValue( FILE* file, OUTPUT_PRECISION* v ) {
	const int litteBigEndianTest = 1;
	if( (*((unsigned char*) &litteBigEndianTest)) == 0 ) {         /* big endian */
		const char* vPtr = (char*) v;
		char buffer[sizeof( OUTPUT_PRECISION )];
		int i;

		for (i = 0; i < sizeof( OUTPUT_PRECISION ); i++)
			buffer[i] = vPtr[sizeof( OUTPUT_PRECISION ) - i - 1];

		fwrite( buffer, sizeof( OUTPUT_PRECISION ), 1, file );
	}
	else {                                                     /* little endian */
		fwrite( v, sizeof( OUTPUT_PRECISION ), 1, file );
	}
}

/*############################################################################*/

void LBM_storeVelocityField( LBM_Grid grid, const char* filename,
		const int binary ) {
	OUTPUT_PRECISION rho, ux, uy, uz;

	FILE* file = fopen( filename, (binary ? "wb" : "w") );

	SWEEP_VAR
	SWEEP_START(0,0,0,SIZE_X,SIZE_Y,SIZE_Z)
				rho = + SRC_C( grid ) + SRC_N( grid )
					+ SRC_S( grid ) + SRC_E( grid )
					+ SRC_W( grid ) + SRC_T( grid )
					+ SRC_B( grid ) + SRC_NE( grid )
					+ SRC_NW( grid ) + SRC_SE( grid )
					+ SRC_SW( grid ) + SRC_NT( grid )
					+ SRC_NB( grid ) + SRC_ST( grid )
					+ SRC_SB( grid ) + SRC_ET( grid )
					+ SRC_EB( grid ) + SRC_WT( grid )
					+ SRC_WB( grid );
				ux = + SRC_E( grid ) - SRC_W( grid ) 
					+ SRC_NE( grid ) - SRC_NW( grid ) 
					+ SRC_SE( grid ) - SRC_SW( grid ) 
					+ SRC_ET( grid ) + SRC_EB( grid ) 
					- SRC_WT( grid ) - SRC_WB( grid );
				uy = + SRC_N( grid ) - SRC_S( grid ) 
					+ SRC_NE( grid ) + SRC_NW( grid ) 
					- SRC_SE( grid ) - SRC_SW( grid ) 
					+ SRC_NT( grid ) + SRC_NB( grid ) 
					- SRC_ST( grid ) - SRC_SB( grid );
				uz = + SRC_T( grid ) - SRC_B( grid ) 
					+ SRC_NT( grid ) - SRC_NB( grid ) 
					+ SRC_ST( grid ) - SRC_SB( grid ) 
					+ SRC_ET( grid ) - SRC_EB( grid ) 
					+ SRC_WT( grid ) - SRC_WB( grid );
				ux /= rho;
				uy /= rho;
				uz /= rho;

				if( binary ) {
					/*
					   fwrite( &ux, sizeof( ux ), 1, file );
					   fwrite( &uy, sizeof( uy ), 1, file );
					   fwrite( &uz, sizeof( uz ), 1, file );
					   */
					storeValue( file, &ux );
					storeValue( file, &uy );
					storeValue( file, &uz );
				} else
					fprintf( file, "%e %e %e\n", ux, uy, uz );

	SWEEP_END;

	fclose( file );
}

