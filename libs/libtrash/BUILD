(

  sedit "s/CFLAGS=/CFLAGS=$CFLAGS /" src/Makefile &&
  sedit "s/INSTLIBDIR=\/usr\/local\/lib/INSTLIBDIR=\/usr\/lib/" src/Makefile &&
  default_make
  
) > $C_FIFO 2>&1
