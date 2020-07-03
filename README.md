# OpenACC
Slides and source files for the OpenACC introduction course

## Slides
* presentation.pdf
* profile-dev.pdf

## ./
* accCounter
* accParaCounter
* arrayshape
* async
* directive
* enter-data
* fused
* .gitignore
* gr-loop
* loop
* loop_coalescing
* module
* parallel_data
* parametres_paral
* par-data
* reduction
* reduction_data_region
* routines
* TP_GoL
* update-data

## ./accCounter:
* accCounter.cpp
* accCounter_no_atomic
* accCounter_w_atomic
* Make-accCounter.out
* Make-accCounter.sh
* SEQ.out
* USE_ATOMIC.out

## ./accParaCounter:
* AccParaCounter
AccParaCounter.cpp
Makefile
Make.out

## ./arrayshape:
* c++
* fortran

### ./arrayshape/c++:
* array-shape.cpp
* array-shape.err
* array-shape.out
* compile.err
* compile.out
* log.out
* prof.err
* prof.out
* vector

### ./arrayshape/c++/vector:
* array-shape.cpp
* array-shape.err
* array-shape.out
* compile.err
* compile.out
* log.out
* prof.err
* prof.out

### ./arrayshape/fortran:
* array-shape.err
* array-shape.f90
* array-shape.out
* compile.err
* compile.out
* prof.err
* prof.out
 
## ./async:
* async-1
* async-2
* async-3
* sync
* wait

### ./async/async-1:
* async-1.err
* async-1.f90
* async-1.out
* compile.err
* compile.out
* log.out
* prof.err
* prof.out

### ./async/async-2:
* async-2.err
* async-2.f90
* async-2.out
* compile.err
* compile.out
* log.out
* prof.err
* prof.out

### ./async/async-3:
* async-3.err
* async-3.f90
* async-3.out
* compile.err
* compile.out
* log.out
* prof.err
* prof.out

### ./async/sync:
* compile.err
* compile.out
* log.out
* prof.err
* prof.out
* sync.err
* sync.f90
* sync.out

### ./async/wait:
* compile.err
* compile.out
* log.out
* prof.err
* prof.out
* wait.err
* wait.f90
* wait.out

## ./directive:
* c.cpp
* fort.f90

## ./enter-data:
* compile.err
* compile.out
* enter-data.err
* enter-data.f90
* enter-data.out
* log.out
* prof.err
* prof.out

## ./fused:
* compile.err
* compile.out
* fused.err
* fused.f90
* fused.out
* prof.err
* prof.out
 
## ./gr-loop:
* compile.err
* compile.out
* gr-loop.f90

## ./loop:
* compile.out
* GPWPVP
* GPWPVS
* GPWSVP
* GPWSVS
* GRWPVP
* GRWPVS
* GRWSVP
* GRWSVS
* loop.f90
* serial

### ./loop/GPWPVP:
* compile.err
* compile.out
* log.out
* loop_gpwpvp.err
* loop_gpwpvp.f90
* loop_gpwpvp.out
* prof.err
* prof.out

### ./loop/GPWPVS:
* compile.err
* compile.out
* loop_gpwpvs.err
* loop_gpwpvs.f90
* loop_gpwpvs.out
* prof.err
* prof.out
 
### ./loop/GPWSVP:
* compile.err
* compile.out
* log.out
* loop_gpwsvp.err
* loop_gpwsvp.f90
* loop_gpwsvp.out
* prof.err
* prof.out

### ./loop/GPWSVS:
* compile.err
* compile.out
* log.out
* loop_gpwsvs.err
* loop_gpwsvs.f90
* loop_gpwsvs.out
* prof.err
* prof.out

### ./loop/GRWPVP:
* compile.err
* compile.out
* loop_grwpvp.err
* loop_grwpvp.f90
* loop_grwpvp.out
* prof.err
* prof.out
 
### ./loop/GRWPVS:
* compile.err
* compile.out
* loop_grwpvs.err
* loop_grwpvs.f90
* loop_grwpvs.out
* prof.err
* prof.out

### ./loop/GRWSVP:
* compile.err
* compile.out
* loop_grwsvp.err
* loop_grwsvp.f90
* loop_grwsvp.out
* prof.err
* prof.out

### ./loop/GRWSVS:
* compile.err
* compile.out
* log.out
* loop_grwsvs.err
* loop_grwsvs.f90
* loop_grwsvs.out
* prof.err
* prof.out

### ./loop/serial:
* compile.err
* compile.out
* log.out
* loop_seq.err
* loop_seq.out
* loop_serial.f90
* prof.err
* prof.out

## ./loop_coalescing:
* coalescing-seq
* coalescing-vec
* nocoalescing

### ./loop_coalescing/coalescing-seq:
* compile.err
* compile.out
* log.out
* loop_coalescing-seq.err
* loop_coalescing-seq.f90
* loop_coalescing-seq.out
* prof.err
* prof.out

### ./loop_coalescing/coalescing-vec:
* compile.err
* compile.out
* log.out
* loop_coalescing-vec.err
* loop_coalescing-vec.f90
* loop_coalescing-vec.out
* prof.err
* prof.out

### ./loop_coalescing/nocoalescing:
* compile.err
* compile.out
* log.out
* loop_nocoalescing.err
* loop_nocoalescing.f90
* loop_nocoalescing.out
* prof.err
* prof.out

### ./module:
* compile.err
* compile.out
* module.err
* module.f90
* module.out
* prof.err
* prof.out
* var.mod

## ./parallel_data:
* optm
* parallel-data
* parallel-data-multi
* parallel-data-single

### ./parallel_data/optm:
* compile.out
* log.out
* optm.f90

### ./parallel_data/parallel-data:
* compile.err
* compile.out
* log.out
* parallel-data.err
* parallel-data.f90
* parallel-data.out
* prof.err
* prof.out

### ./parallel_data/parallel-data-multi:
* compile.out
* log.out
* nvprof.compact
* nvprof.multi.out
* nvprof-multi.png
* parallel-data-multi.f90
* parallel-data-multi.png
* pgprof-multi.png

### ./parallel_data/parallel-data-single:
* compile.out
* log.out
* nvprof.compact
* nvprof.single.out
* nvprof-single.png
* parallel-data-single.f90
* parallel-data-single.png
* pgprof-single.png

## ./parametres_paral:
* compile.err
* compile.out
* parametres_paral.f90
* param-mod
* param-par.err
* param-par.out
* prof.err
* prof.out

### ./parametres_paral/param-mod:
* compile.err
* compile.out
* parametres_mod.f90
* param-par.err
* param-par.out
* prof.err
* prof.out
 
## ./par-data:
* optm
* parallel-data
* parallel-data-multi
* parallel-data-single

### ./par-data/optm:
* compile.err
* compile.out
* log.out
* optm.err
* optm.f90
* optm.out
* prof.err
* prof.out

### ./par-data/parallel-data:
* compile.err
* compile.out
* log.out
* parallel-data.err
* parallel-data.f90
* parallel-data.out
* prof.err
* profile-mod.err
* prof.out

### ./par-data/parallel-data-multi:
* compile.err
* compile.out
* log.out
* nvprof.multi.out
* parallel-data-multi.err
* parallel-data-multi.f90
* parallel-data-multi.out
* pgprof.multi.out
* prof.err
* prof.out

### ./par-data/parallel-data-single:
* compile.err
* compile.out
* log.out
* nvprof.single.out
* parallel-data-single.err
* parallel-data-single.f90
* parallel-data-single.out
* pgprof.single.out
* prof.err
* prof.out

## ./reduction:
* autocomp-pb_sync
* compile.out
* corr_sync
* pb_sync
* reduction.f90

### ./reduction/autocomp-pb_sync:
* compile.err
* compile.out
* pb-sync.err
* pb-sync.f90
* pb-sync.out
* prof.err
* prof.out

### ./reduction/corr_sync:
* compile.err
* compile.out
* corr_sync.err
* corr_sync.f90
* corr_sync.out
* log.out
* log.out1
* log.out2
* prof.err
* prof.out

### ./reduction/pb_sync:
* compile.err
* compile.out
* log.out
* log.out1
* log.out2
* pb-sync.err
* pb-sync.f90
* pb-sync.out
* prof.err
* prof.out

### ./reduction_data_region:
* compile.out
* nohup.out
* reduction_data_region.f90

## ./routines:
* routine-corr
* routine-wrong

### ./routines/routine-corr:
* compile.err
* compile.out
* log.out
* routine-corr.f90

### ./routines/routine-wrong:
* compile.err
* compile.out
* routine-wrong.f90

### ./TP_GoL:
* avec_indications
* jr-solution
* kernel
* optm
* par-autopar
* par-loop
* par-noautopar
* sans_indications
* serial
* solution

### ./TP_GoL/avec_indications:
* generate_movie.sh
* gol.f90
* Makefile

### ./TP_GoL/kernel:
* generate_movie.sh
* gol.err
* gol.f90
* gol.out
* make.err
* Makefile
* make.out
* prof.err
* prof.out

### ./TP_GoL/optm:
* kernel2multi-core
* kernel-cont
* kernel-noncont
* par2multi-core
* serial
* step-1
* step-10
* step-11
* step-2
* step-3
* step-4
* step-5
* step-6
* step-7
* step-8
* step-9

#### ./TP_GoL/optm/kernel2multi-core:
* clean.sh
* gol.err
* gol.f90
* gol.out
* make.err
* Makefile
* make.out
* prof.err
* prof.out
* run.sh

#### ./TP_GoL/optm/kernel-cont:
* clean.sh
* gol.err
* gol.f90
* gol.out
* make.err
* Makefile
* make.out
* prof.err
* prof.out
* run.sh

#### ./TP_GoL/optm/kernel-noncont:
* clean.sh
* gol.err
* gol.f90
* gol.out
* make.err
* Makefile
* make.out
* prof.err
* prof.out
* run.sh

#### ./TP_GoL/optm/par2multi-core:
* clean.sh
* gol.err
* gol.f90
* gol.out
* make.err
* Makefile
* make.out
* prof.err
* prof.out
* run.sh

#### ./TP_GoL/optm/serial:
* clean.sh
* gol.err
* gol.f90
* gol.out
* make.err
* Makefile
* make.out
* prof.err
* prof.out
* run.sh

#### ./TP_GoL/optm/step-1:
* clean.sh
* gol.err
* gol.f90
* gol.out
* make.err
* Makefile
* make.out
* prof.err
* prof.out
* run.sh

#### ./TP_GoL/optm/step-10:
* clean.sh
* gol.err
* gol.f90
* gol.out
* make.err
* Makefile
* make.out
* prof.err
* prof.out
* run.sh

#### ./TP_GoL/optm/step-11:
* clean.sh
* gol.err
* gol.f90
* gol.out
* make.err
* Makefile
* make.out
* prof.err
* prof.out
* run.sh

#### ./TP_GoL/optm/step-2:
* clean.sh
* gol.err
* gol.f90
* gol.out
* make.err
* Makefile
* make.out
* prof.err
* prof.out
* run.sh

#### ./TP_GoL/optm/step-3:
* clean.sh
* gol.err
* gol.f90
* gol.out
* make.err
* Makefile
* make.out
* prof.err
* prof.out
* run.sh

#### ./TP_GoL/optm/step-4:
* clean.sh
* gol.err
* gol.f90
* gol.out
* make.err
* Makefile
* make.out
* prof.err
* prof.out
* run.sh

#### ./TP_GoL/optm/step-5:
* clean.sh
* gol.err
* gol.f90
* gol.out
* make.err
* Makefile
* make.out
* prof.err
* prof.out
* run.sh

#### ./TP_GoL/optm/step-6:
* clean.sh
* gol.err
* gol.f90
* gol.out
* make.err
* Makefile
* make.out
* prof.err
* prof.out
* run.sh

#### ./TP_GoL/optm/step-7:
* clean.sh
* gol.err
* gol.f90
* gol.out
* make.err
* Makefile
* make.out
* prof.err
* prof.out
* run.sh

#### ./TP_GoL/optm/step-8:
* clean.sh
* gol.err
* gol.f90
* gol.out
* make.err
* Makefile
* make.out
* prof.err
* prof.out
* run.sh

#### ./TP_GoL/optm/step-9:
* clean.sh
* gol.err
* gol.f90
* gol.out
* make.err
* Makefile
* make.out
* prof.err
* prof.out
* run.sh
* step-8

#### ./TP_GoL/optm/step-9/step-8:
* clean.sh
* gol.err
* gol.f90
* gol.out
* make.err
* Makefile
* make.out
* prof.err
* prof.out
* run.sh

### ./TP_GoL/par-autopar:
* generate_movie.sh
* gol.err
* gol.f90
* gol.out
* make.err
* Makefile
* make.out
* prof.err
* prof.out
 
### ./TP_GoL/par-loop:
* generate_movie.sh
* gol.err
* gol.f90
* gol.out
* make.err
* Makefile
* make.out
* prof.err
* prof.out

### ./TP_GoL/par-noautopar:
* generate_movie.sh
* gol.err
* gol.f90
* gol.out
* make.err
* Makefile
* make.out
* prof.err
* prof.out

### ./TP_GoL/sans_indications:
* generate_movie.sh
* gol.f90
* Makefile
* movie

### ./TP_GoL/serial:
* generate_movie.sh
* gol.err
* gol.f90
* gol.out
* make.err
* Makefile
* make.out
* prof.err
* prof.out

### ./TP_GoL/solution:
* generate_movie.sh
* gol.f90
* Makefile
* movie

## ./update-data:
* corr
* err

### ./update-data/corr:
* compile.err
* compile.out
* log.out
* prof.err
* prof.out
* update-corr.err
* update-corr.f90
* update-corr.out

### ./update-data/err:
* compile.err
* compile.out
* log.out
* prof.err
* prof.out
* update-err.err
* update-err.f90
* update-err.out

## ./profile_dev
* 00-original
* 02-accelerate_waxpby
* 03-accelerate_dot
* 04-accelerate_matvec
* 05-describe_data_movement
* 06-reduce_vector_length
* 07-increase_parallelism
* 08-multicore

### ./profile_dev/00-original:
* cg.out  
* main.cpp  
* main.o  
* Makefile  
* make.out  
* matrix_functions.h  
* matrix.h  
* perf.data  
* perf.data.old  
* perf.out  
* pgprof.out  
* vector_functions.h  
* vector.h

### ./profile_dev/02-accelerate_waxpby:
* main.cpp  
* make-1.out  
* make-2.out  
* Makefile  
* matrix_functions.h  
* matrix.h  
* vector_functions.h  
* vector_functions.h-1  
* vector_functions.h-2  
* vector_functions.h-full  
* vector.h  

### ./profile_dev/03-accelerate_dot:
* main.cpp  
* Makefile  
* make.out  
* matrix_functions.h  
* matrix.h  
* vector_functions.h  
* vector.h

### ./profile_dev/04-accelerate_matvec:
* main.cpp  
* make-1.out  
* make-2.out  
* Makefile  
* matrix_functions.h  
* matrix_functions.h-1  
* matrix_functions.h-2  
* matrix_functions.h-optm  
* matrix.h  
* vector_functions.h  
* vector.h

### ./profile_dev/05-describe_data_movement:
* main.cpp  
* Makefile  
* make.out  
* matrix_functions.h  
* matrix.h  
* vector_functions.h  
* vector.h

### ./profile_dev/06-reduce_vector_length:
* cg.out  
* main.cpp  
* Makefile  
* make.out  
* matrix_functions.h  
* matrix.h  
* vector_functions.h  
* vector.h

### ./profile_dev/07-increase_parallelism:
* cg-w16.out  
* cg-w16.x    
* cg-w1.out   
* cg-w1.x     
* cg-w2.out   
* cg-w2.x     
* cg-w32.out  
* cg-w4opt.out  
* cg-w4opt.x    
* cg-w4.out     
* cg-w8.out           
* cg-w8.x             
* main.cpp           
* Makefile           
* make-w1.out     
* make-w2.out     
* make-w32.out    
* make-w4.out            
* make-w8.out            
* matrix_functions.h     
* matrix_functions.h-w16  
* matrix_functions.h-w2   
* matrix_functions.h-w32  
* matrix_functions.h-w8
* matrix.h
* vector_functions.h   

### ./profile_dev/08-multicore:
* cg-w32.x    
* cg-w4.x       
* make-w16.out       
* make-w4opt.out  
* matrix_functions.h-w1  
* matrix_functions.h-w4   
* vector.h
* cg-1.out  
* cg-2.out  
* cg-3.out  
* cg-4.out  
* cg-5.out  
* cg-6.out  
* main.cpp  
* Makefile  
* make.out  
* matrix_functions.h  
* matrix.h  
* vector_functions.h  
* vector.h
