Launch params (512, 1, 1) are larger than launch bounds (256) for kernel _Z14binning_kerneljP20ReconstructionSamplePjS1_S1_jj please add __launch_bounds__ to kernel define or use --gpu-max-threads-per-block recompile program ! 
Invalid address access: 0x2b566bc54000, Error code: 3.

>>>>>>>> KERNEL VMFault !!!! <<<<<<

>>>>>>>> PID: 18827, SIGNAL: 0 !!!! <<<<<<
=========> HOSTQUEUE <0x16a48c0>: VMFault HSA QUEUE ANALYSIS <=========
HOSTQUEUE <0x16a48c0>: get hsa queue W/R ptr: write index: 45, read index: 41
HOSTQUEUE <0x16a48c0>: >>>>>>>> DUMP KERNEL AQL PACKET <<<<<<<<<
HOSTQUEUE <0x16a48c0>: header: 2818
HOSTQUEUE <0x16a48c0>: setup: 3
HOSTQUEUE <0x16a48c0>: workgroup: x:256, y:1, z:1
HOSTQUEUE <0x16a48c0>: grid: x:664064, y:1, z:1
HOSTQUEUE <0x16a48c0>: group_segment_size: 4160
HOSTQUEUE <0x16a48c0>: private_segment_size: 0
HOSTQUEUE <0x16a48c0>: kernel_object: 47631649775296

HOSTQUEUE <0x16a48c0>: device id: 0

HOSTQUEUE <0x16a48c0>: >>>>>>>> FIND MATCH KERNEL COMMAND <<<<<<<<<
HOSTQUEUE <0x16a48c0>: kernel name: _Z14splitRearrangeiiPjS_S_S_S_

HOSTQUEUE <0x16a48c0>: >>>>>>>> DUMP KERNEL ARGS: size: 48 <<<<<<<<<

a6 86 28 00 00 00 00 00 00 00 60 5f 56 2b 00 00 
00 00 80 61 56 2b 00 00 00 00 40 60 56 2b 00 00 
00 00 60 62 56 2b 00 00 00 00 40 61 56 2b 00 00 

HOSTQUEUE <0x16a48c0>: >>>>>>>> DUMP KERNEL ARGS PTR INFO <<<<<<<<<
HOSTQUEUE <0x16a48c0>: ptr arg index: 1, ptr: 0x2b565f600000
HOSTQUEUE <0x16a48c0>: origin ptr: 0x2b565f600000, size byte: 10623648

HOSTQUEUE <0x16a48c0>: ptr arg index: 2, ptr: 0x2b5661800000
HOSTQUEUE <0x16a48c0>: origin ptr: 0x2b5661800000, size byte: 10623640

HOSTQUEUE <0x16a48c0>: ptr arg index: 3, ptr: 0x2b5660400000
HOSTQUEUE <0x16a48c0>: origin ptr: 0x2b5660400000, size byte: 10623648

HOSTQUEUE <0x16a48c0>: ptr arg index: 4, ptr: 0x2b5662600000
HOSTQUEUE <0x16a48c0>: origin ptr: 0x2b5662600000, size byte: 10623640

HOSTQUEUE <0x16a48c0>: ptr arg index: 5, ptr: 0x2b5661400000
HOSTQUEUE <0x16a48c0>: origin ptr: 0x2b5661400000, size byte: 166016




>>>>>>>> KERNEL VMFault Analysis END !!!! <<<<<<

/opt/gridview/slurm/spool_slurmd/job13000213/slurm_script: line 10: 18827 Aborted                 (core dumped) ./main 32 0 -i /public/home/dtune/zhengh/datasets/mri-gridding/small/input/small.uks -o output.txt
