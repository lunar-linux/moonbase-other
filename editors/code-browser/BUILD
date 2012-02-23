(

  sedit "s:/usr/local:/usr:g" Makefile &&
  sedit "s:-O2:$CFLAGS:g" Makefile &&
  sedit "s:-O2:$CFLAGS:" zinc/Makefile &&

  default_make

) > $C_FIFO 2>&1
