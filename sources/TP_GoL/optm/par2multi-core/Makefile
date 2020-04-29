FC           = pgf90
GPUOPT       = -O0 -acc=noautopar -ta=multicore -Minfo=all#accel
#GPUOPT       = -O0 -acc -ta=tesla:cc35,cc60 -Minfo=all#accel
CPUOPT       = #-ta=multicore -Minfo=all -fast

OBJS = gol.o
PROG = gol

%.o: %.f90
	$(FC) $(GPUOPT)  -c $< -o $@

$(PROG) : $(OBJS)
	$(FC) $(GPUOPT) $(OBJS) -o $(PROG)

clean:
	rm -f *.o $(PROG)
