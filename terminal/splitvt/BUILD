(

  sedit "s:/usr/local/bin:/usr/bin:g" config.c  &&
  ./configure  $OPTS                            &&
  sedit "s:-O2:$CFLAGS:" Makefile               &&
  default_make

) > $C_FIFO 2>&1
