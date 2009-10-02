(

  sedit "s/CFLAGS=-O2 -Wall/CFLAGS=$CFLAGS/" config.mk &&
  sedit "s/PREFIX=\/usr\/local/PREFIX=\/usr/" config.mk &&
  make &&
  cd doc &&
  make &&
  cd .. &&
  prepare_install &&
  make install &&
  gather_docs AUTHORS TODO
  
) > $C_FIFO 2>&1
