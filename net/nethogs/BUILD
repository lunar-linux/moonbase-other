(

  patch_it  $SOURCE_CACHE/$SOURCE2 0  &&
  sedit "s:CFLAGS=-O2:CFLAGS=$CFLAGS:" Makefile  &&
  default_make

) > $C_FIFO 2>&1
