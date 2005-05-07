(

  sedit  "s:<sys/time.h>:<time.h>:"  alevt-date.c  &&
  sedit  "s:/usr/local:/usr:"  Makefile    && 
  sedit  "s:-O2:$CFLAGS:"      Makefile    &&
  make             &&
  prepare_install  &&
  make install

) > $C_FIFO 2>&1
