(
  cd ./make/linux                       &&
  
  sedit "s:/usr/local:/usr:" Makefile  &&

  make                                  &&
  prepare_install                       &&
  make    install

) > $C_FIFO 2>&1
