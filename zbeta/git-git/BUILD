(

  sedit "s/-g -O2/${CFLAGS}/" Makefile &&
  make prefix=/usr &&
  prepare_install  &&
  make prefix=/usr install 

) > $C_FIFO 2>&1
