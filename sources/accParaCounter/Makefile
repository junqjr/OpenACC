FC           = pgc++
GPUOPT       = -std=c++11 -acc -ta=tesla:cc35,cc60 -Minfo=accel -fast
CPUOPT       = -ta=multicore -Minfo=all -fast

OBJS = accParaCounter.o
PROG = accParaCounter

%.o: %.cpp
	$(FC) $(GPUOPT)  -c $< -o $@

$(PROG) : $(OBJS)
	$(FC) $(GPUOPT) $(OBJS) -o $(PROG)

clean:
	rm -f *.o $(PROG)
