(

  ./configure &&
  sedit "s/\/usr\/man\//\/usr\/share\/man\//g" Makefile &&
  make &&
  prepare_install &&
  make install

) > $C_FIFO 2>&1
