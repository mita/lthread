all: liblthread.a

ifndef DPDK
$(error Please set the DPDK variable)
endif

OBJS = lthread.o lthread_cond.o lthread_diag.o lthread_mutex.o lthread_sched.o lthread_tls.o
OBJS += arch/x86/ctx.o

CFLAGS = -g -O3 -Wall
CFLAGS += -I$(DPDK)/include -I.
CFLAGS += -Iarch/x86

%.o: %.c
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) -o $@ -c $<

liblthread.a: $(OBJS)
	ar rv liblthread.a $(OBJS)

clean:
	rm -f liblthread.a
	rm -f *.o
	rm -f arch/arm64/*.o
	rm -f arch/x86/*.o
