(

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  sedit "s/-g -O2/${CFLAGS}/" Makefile &&
  default_make

) > $C_FIFO 2>&1
