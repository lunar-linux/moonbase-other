(

  sedit "s:-O2:$CFLAGS:" Makefile &&

  sedit "s:-O2:$CFLAGS:" zinc/Makefile &&

  sedit "s:/usr/local:/usr:" Makefile  &&

  default_make

) > $C_FIFO 2>&1
