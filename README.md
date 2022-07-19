This directory includes the lightweight thread library used by DPDK sample
applications in the dpdk/examples/performance-thread directory.

There are a few changes to the original source code.

- Add sample Makefile
- Allow `LTHREAD_MAX_STACK_SIZE` variable to be set at build time

Here is an example of building the library.

```
make DPDK=$HOME/dpdk/build EXTRA_CFLAGS=-DLTHREAD_MAX_STACK_SIZE=1048576
```
