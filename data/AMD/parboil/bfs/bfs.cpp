#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
#include "parboil.h"
#include <deque>
#include <iostream>


#ifndef _CONFIG_H_
#define _CONFIG_H_

/*############################################################################*/

//#define SIZE   (100)
//#define SIZE_X (1*SIZE)
//#define SIZE_Y (1*SIZE)
//#define SIZE_Z (130)

#define OMEGA (1.95f)

#define OUTPUT_PRECISION float 

#define BOOL int
#define TRUE (-1)
#define FALSE (0)

/*############################################################################*/

#endif /* _CONFIG_H_ */
FILE *fp;

#define MAX_THREADS_PER_BLOCK 512
#define NUM_SM 14 //the number of Streaming Multiprocessors; 15 for Fermi architecture 30 for G280 at the moment of this document
#define NUM_BIN 8 //the number of duplicated frontiers used in BFS_kernel_multi_blk_inGPU
#define EXP 3 // EXP = log(NUM_BIN), assuming NUM_BIN is still power of 2 in the future architecture
	//using EXP and shifting can speed up division operation 
#define MOD_OP 7 // This variable is also related with NUM_BIN; may change in the future architecture;
	//using MOD_OP and "bitwise and" can speed up mod operation
#define INF 2147483647//2^31-1
#define UP_LIMIT 16677216//2^24
#define WHITE 16677217
#define GRAY 16677218
#define GRAY0 16677219
#define GRAY1 16677220
#define BLACK 16677221
#define W_QUEUE_SIZE 400


#ifndef _KERNEL_H_
#define _KERNEL_H_
/**********
Define colors for BFS
1) the definition of White, gray and black comes from the text book "Introduction to Algorithms"
2) For path search problems, people may choose to use different colors to record the found paths.
Therefore we reserve numbers (0-16677216) for this purpose. Only nodes with colors bigger than
UP_LIMIT are free to visit 
3) We define two gray shades to differentiate between the new frontier nodes and the old frontier nodes that
 have not been marked BLACK 
*************/

#define UP_LIMIT 16677216//2^24
#define WHITE 16677217
#define GRAY 16677218
#define GRAY0 16677219
#define GRAY1 16677220
#define BLACK 16677221



typedef int2 Node;
typedef int2 Edge;


texture<Node> g_graph_node_ref;
texture<Edge> g_graph_edge_ref;

volatile __device__ int count = 0;
volatile __device__ int no_of_nodes_vol = 0;
volatile __device__ int stay_vol = 0;

/*****************************************************************************
This is the  most general version of BFS kernel, i.e. no assumption about #block in the grid  
\param q1: the array to hold the current frontier
\param q2: the array to hold the new frontier
\param g_graph_nodes: the nodes in the input graph
\param g_graph_edges: the edges i nthe input graph
\param g_color: the colors of nodes
\param g_cost: the costs of nodes
\param no_of_nodes: the number of nodes in the current frontier
\param tail: pointer to the location of the tail of the new frontier. *tail is the size of the new frontier 
\param gray_shade: the shade of the gray in current BFS propagation. See GRAY0, GRAY1 macro definitions for more details
\param k: the level of current propagation in the BFS tree. k= 0 for the first propagation.
***********************************************************************/
__global__ void
BFS_kernel(int * q1, 
           int * q2, 
           Node* g_graph_nodes, 
           Edge* g_graph_edges, 
           int* g_color, 
           int * g_cost, 
           int no_of_nodes, 
           int * tail, 
           int gray_shade, 
           int k) 
{
  __shared__ int local_q_tail;//the tails of each local warp-level queue
  __shared__ int local_q[NUM_BIN*W_QUEUE_SIZE];//the local warp-level queues 
  //current w-queue, a.k.a prefix sum
  __shared__ int shift;

  if(threadIdx.x == 0){
    local_q_tail = 0;//initialize the tail of w-queue
  }
  __syncthreads();

  //first, propagate and add the new frontier elements into w-queues
  int tid = blockIdx.x*MAX_THREADS_PER_BLOCK + threadIdx.x;
  if( tid<no_of_nodes)
  {
    int pid = q1[tid]; //the current frontier node, or the parent node of the new frontier nodes 
    g_color[pid] = BLACK;
    int cur_cost = g_cost[pid];
    //into
    Node cur_node = tex1Dfetch(g_graph_node_ref,pid);
    for(int i=cur_node.x; i<cur_node.y + cur_node.x; i++)//visit each neighbor of the
      //current frontier node.
    {
      Edge cur_edge = tex1Dfetch(g_graph_edge_ref,i);
      int id = cur_edge.x;
      int cost = cur_edge.y;
      cost += cur_cost;
      int orig_cost = atomicMin(&g_cost[id],cost);
      if(orig_cost > cost){//the node should be visited
        if(g_color[id] > UP_LIMIT){
          int old_color = atomicExch(&g_color[id],gray_shade);
          //this guarantees that only one thread will push this node
          //into a queue
          if(old_color != gray_shade) {

            //atomic operation guarantees the correctness
            //even if multiple warps are executing simultaneously
            int index = atomicAdd(&local_q_tail,1);
            local_q[index] = id;
          }
        }
      }
    }
  }
  __syncthreads();

  if(threadIdx.x == 0){
    int tot_sum = local_q_tail; 

    //the offset or "shift" of the block-level queue within the grid-level queue
    //is determined by atomic operation
    shift = atomicAdd(tail,tot_sum);
  }
  __syncthreads();


  int local_shift = threadIdx.x;//shift within a w-queue

  //loop unrolling was originally used for better performance, but removed for better readability
  while(local_shift < local_q_tail){
    q2[shift + local_shift] = local_q[local_shift];
    local_shift += blockDim.x;//multiple threads are copying elements at the same time,
    //so we shift by multiple elements for next iteration  
  }
}
#endif 


const int h_top = 1;
const int zero = 0;

////////////////////////////////////////////////////////////////////////////////
// Main Program
////////////////////////////////////////////////////////////////////////////////
int main(int argc, char** argv) 
{
  //the number of nodes in the graph
  int num_of_nodes = 0; 
  //the number of edges in the graph
  int num_of_edges = 0;
  struct pb_Parameters *params;
  struct pb_TimerSet timers;

  pb_InitializeTimerSet(&timers);
  params = pb_ReadParameters(&argc, argv);
  if ((params->inpFiles[0] == NULL) || (params->inpFiles[1] != NULL))
  {
    fprintf(stderr, "Expecting one input filename\n");
    exit(-1);
  }

  pb_SwitchToTimer(&timers, pb_TimerID_IO);
  //printf("Reading File\n");
  //Read in Graph from a file
  fp = fopen(params->inpFiles[0],"r");
  if(!fp)
  {
    printf("Error Reading graph file\n");
    return 0;
  }
  int source;

  fscanf(fp,"%d",&num_of_nodes);
  // allocate host memory
  Node* h_graph_nodes = (Node*) malloc(sizeof(Node)*num_of_nodes);
  int *color = (int*) malloc(sizeof(int)*num_of_nodes);
  int start, edgeno;   
  // initalize the memory
  for( unsigned int i = 0; i < num_of_nodes; i++) 
  {
    fscanf(fp,"%d %d",&start,&edgeno);
    h_graph_nodes[i].x = start;
    h_graph_nodes[i].y = edgeno;
    color[i]=WHITE;
  }
  //read the source node from the file
  fscanf(fp,"%d",&source);
  fscanf(fp,"%d",&num_of_edges);
  int id,cost;
  Edge* h_graph_edges = (Edge*) malloc(sizeof(Edge)*num_of_edges);
  for(int i=0; i < num_of_edges ; i++)
  {
    fscanf(fp,"%d",&id);
    fscanf(fp,"%d",&cost);
    h_graph_edges[i].x = id;
    h_graph_edges[i].y = cost;
  }
  if(fp)
    fclose(fp);    

  // allocate mem for the result on host side
  int* h_cost = (int*) malloc( sizeof(int)*num_of_nodes);
  for(int i = 0; i < num_of_nodes; i++){
    h_cost[i] = INF;
  }
  h_cost[source] = 0;

  pb_SwitchToTimer(&timers, pb_TimerID_COPY);

  //Copy the Node list to device memory
  Node* d_graph_nodes;
  hipMalloc((void**) &d_graph_nodes, sizeof(Node)*num_of_nodes);
  hipMemcpy(d_graph_nodes, h_graph_nodes, sizeof(Node)*num_of_nodes, hipMemcpyHostToDevice);
  //Copy the Edge List to device Memory
  Edge* d_graph_edges;
  hipMalloc((void**) &d_graph_edges, sizeof(Edge)*num_of_edges);
  hipMemcpy(d_graph_edges, h_graph_edges, sizeof(Edge)*num_of_edges, hipMemcpyHostToDevice);

  int* d_color;
  hipMalloc((void**) &d_color, sizeof(int)*num_of_nodes);
  int* d_cost;
  hipMalloc((void**) &d_cost, sizeof(int)*num_of_nodes);
  int * d_q1;
  int * d_q2;
  hipMalloc( (void**) &d_q1, sizeof(int)*num_of_nodes);
  hipMalloc( (void**) &d_q2, sizeof(int)*num_of_nodes);
  int * tail;
  hipMalloc( (void**) &tail, sizeof(int));
  int *front_cost_d;
  hipMalloc( (void**) &front_cost_d, sizeof(int));
  hipMemcpy( d_color, color, sizeof(int)*num_of_nodes, hipMemcpyHostToDevice);
  hipMemcpy( d_cost, h_cost, sizeof(int)*num_of_nodes, hipMemcpyHostToDevice);

  //bind the texture memory with global memory
  hipBindTexture(0,g_graph_node_ref,d_graph_nodes, sizeof(Node)*num_of_nodes);
  hipBindTexture(0,g_graph_edge_ref,d_graph_edges,sizeof(Edge)*num_of_edges);

  printf("Starting GPU kernel\n");
  (hipDeviceSynchronize());
  pb_SwitchToTimer(&timers, pb_TimerID_KERNEL);
  
  int num_of_blocks; 
  int num_of_threads_per_block;

  hipMemcpy(tail,&h_top,sizeof(int),hipMemcpyHostToDevice);
  hipMemcpy(&d_cost[source],&zero,sizeof(int),hipMemcpyHostToDevice);

  hipMemcpy( &d_q1[0], &source, sizeof(int), hipMemcpyHostToDevice);
  int num_t;//number of threads
  int k=0;//BFS level index

  do
  {
    (hipMemcpy(&num_t, tail, sizeof(int), hipMemcpyDeviceToHost) );
    (hipMemcpy(tail,&zero,sizeof(int),hipMemcpyHostToDevice));

    if(num_t == 0){//frontier is empty
      break;
    }

    num_of_blocks = 1;
    num_of_threads_per_block = num_t;
    if(num_of_threads_per_block <NUM_BIN)
      num_of_threads_per_block = NUM_BIN;
    if(num_t>MAX_THREADS_PER_BLOCK)
    {
      num_of_blocks = (int)ceil(num_t/(double)MAX_THREADS_PER_BLOCK); 
      num_of_threads_per_block = MAX_THREADS_PER_BLOCK;
    }
    if(num_of_blocks == 1)//will call "BFS_in_GPU_kernel" 
      num_of_threads_per_block = MAX_THREADS_PER_BLOCK; 
    if(num_of_blocks >1 && num_of_blocks <= NUM_SM)// will call "BFS_kernel_multi_blk_inGPU"
      num_of_blocks = NUM_SM;

    dim3  grid( num_of_blocks, 1, 1);
    dim3  threads( num_of_threads_per_block, 1, 1);

    if(k%2 == 0){
      BFS_kernel<<< grid, threads >>>(d_q1,d_q2, d_graph_nodes, 
          d_graph_edges, d_color, d_cost, num_t, tail,GRAY0,k);
    }
    else{
      BFS_kernel<<< grid, threads >>>(d_q2,d_q1, d_graph_nodes, 
          d_graph_edges, d_color, d_cost, num_t, tail, GRAY1,k);
    }
    k++;
  }
  while(1);
  hipDeviceSynchronize();
  pb_SwitchToTimer(&timers, pb_TimerID_COPY);
  printf("GPU kernel done\n");

  // copy result from device to host
  hipMemcpy(h_cost, d_cost, sizeof(int)*num_of_nodes, hipMemcpyDeviceToHost);
  hipMemcpy(color, d_color, sizeof(int)*num_of_nodes, hipMemcpyDeviceToHost);
  hipUnbindTexture(g_graph_node_ref);
  hipUnbindTexture(g_graph_edge_ref);

  hipFree(d_graph_nodes);
  hipFree(d_graph_edges);
  hipFree(d_color);
  hipFree(d_cost);
  hipFree(tail);
  hipFree(front_cost_d);
  //Store the result into a file
  pb_SwitchToTimer(&timers, pb_TimerID_IO);
  FILE *fp = fopen(params->outFile,"w");
  fprintf(fp, "%d\n", num_of_nodes);
  for(int i=0;i<num_of_nodes;i++)
    fprintf(fp,"%d %d\n",i,h_cost[i]);
  fclose(fp);

  // cleanup memory
  free( h_graph_nodes);
  free( h_graph_edges);
  free( color);
  free( h_cost);
  pb_SwitchToTimer(&timers, pb_TimerID_NONE);
  pb_PrintTimerSet(&timers);
  pb_FreeParameters(params);
  return 0;
}
