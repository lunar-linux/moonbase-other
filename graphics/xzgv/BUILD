(

  sedit "s/CFLAGS=-O2 -Wall/CFLAGS=$CFLAGS/" config.mk &&
  sedit "s/PREFIX=\/usr\/local/PREFIX=\/usr/" config.mk &&
  default_make &&
  gather_docs AUTHORS TODO
  
) > $C_FIFO 2>&1
