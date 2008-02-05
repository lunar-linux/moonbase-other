(

sedit "s:CFLAGS=-g -Wall:CFLAGS=-g -Wall $CFLAGS:g" Makefile &&
sedit "s:local/lib:lib:g" Makefile &&
sedit "s:local/include:include:g" Makefile &&
make clean &&
make &&
prepare_install &&
make install

) > $C_FIFO 2>&1
