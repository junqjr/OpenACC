FC           = pgf90
GPUOPT       = -ta=tesla:cc35,cc60,pinned -Minfo=accel -fast
CPUOPT       = -ta=multicore -Minfo=all -fast

OBJS = gol.o
PROG = gol

%.o: %.f90
	$(FC) $(GPUOPT)  -c $< -o $@

$(PROG) : $(OBJS)
	$(FC) $(GPUOPT) $(OBJS) -o $(PROG)

clean:
	rm -f *.o $(PROG)
