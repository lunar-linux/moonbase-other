(

  sedit 's:/usr/local:/usr:g;s:/usr/man:/usr/share/man:g;s:/usr/etc:/etc:g' Makefile config.c &&
  sedit "s:-O2:$CFLAGS:" Makefile &&
  default_make

) > $C_FIFO 2>&1
