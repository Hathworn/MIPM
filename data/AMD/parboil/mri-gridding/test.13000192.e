Launch params (512, 1, 1) are larger than launch bounds (256) for kernel _Z14binning_kerneljP20ReconstructionSamplePjS1_S1_jj please add __launch_bounds__ to kernel define or use --gpu-max-threads-per-block recompile program ! 
Invalid address access: 0x2b84308cd000, Error code: 3.

>>>>>>>> KERNEL VMFault !!!! <<<<<<

>>>>>>>> PID: 16222, SIGNAL: 0 !!!! <<<<<<
=========> HOSTQUEUE <0x27038c0>: VMFault HSA QUEUE ANALYSIS <=========
HOSTQUEUE <0x27038c0>: get hsa queue W/R ptr: write index: 45, read index: 41
HOSTQUEUE <0x27038c0>: >>>>>>>> DUMP KERNEL AQL PACKET <<<<<<<<<
HOSTQUEUE <0x27038c0>: header: 2818
HOSTQUEUE <0x27038c0>: setup: 3
HOSTQUEUE <0x27038c0>: workgroup: x:256, y:1, z:1
HOSTQUEUE <0x27038c0>: grid: x:664064, y:1, z:1
HOSTQUEUE <0x27038c0>: group_segment_size: 4160
HOSTQUEUE <0x27038c0>: private_segment_size: 0
HOSTQUEUE <0x27038c0>: kernel_object: 47828344970944

HOSTQUEUE <0x27038c0>: device id: 0

HOSTQUEUE <0x27038c0>: >>>>>>>> FIND MATCH KERNEL COMMAND <<<<<<<<<
HOSTQUEUE <0x27038c0>: kernel name: _Z14splitRearrangeiiPjS_S_S_S_

HOSTQUEUE <0x27038c0>: >>>>>>>> DUMP KERNEL ARGS: size: 48 <<<<<<<<<

a6 86 28 00 00 00 00 00 00 00 40 2b 84 2b 00 00 
00 00 60 2d 84 2b 00 00 00 00 20 2c 84 2b 00 00 
00 00 40 2e 84 2b 00 00 00 00 20 2d 84 2b 00 00 

HOSTQUEUE <0x27038c0>: >>>>>>>> DUMP KERNEL ARGS PTR INFO <<<<<<<<<
HOSTQUEUE <0x27038c0>: ptr arg index: 1, ptr: 0x2b842b400000
HOSTQUEUE <0x27038c0>: origin ptr: 0x2b842b400000, size byte: 10623648

HOSTQUEUE <0x27038c0>: ptr arg index: 2, ptr: 0x2b842d600000
HOSTQUEUE <0x27038c0>: origin ptr: 0x2b842d600000, size byte: 10623640

HOSTQUEUE <0x27038c0>: ptr arg index: 3, ptr: 0x2b842c200000
HOSTQUEUE <0x27038c0>: origin ptr: 0x2b842c200000, size byte: 10623648

HOSTQUEUE <0x27038c0>: ptr arg index: 4, ptr: 0x2b842e400000
HOSTQUEUE <0x27038c0>: origin ptr: 0x2b842e400000, size byte: 10623640

HOSTQUEUE <0x27038c0>: ptr arg index: 5, ptr: 0x2b842d200000
HOSTQUEUE <0x27038c0>: origin ptr: 0x2b842d200000, size byte: 166016




>>>>>>>> KERNEL VMFault Analysis END !!!! <<<<<<

/opt/gridview/slurm/spool_slurmd/job13000192/slurm_script: line 10: 16222 Aborted                 (core dumped) ./main 32 0 -i /public/home/dtune/zhengh/datasets/mri-gridding/small/input/small.uks -o output.txt
