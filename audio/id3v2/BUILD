(

  sedit "s/opt\/local/usr/" Makefile      &&
  sedit "s/man\//share\/man\//" Makefile  &&
  make clean  &&
  default_make

) > $C_FIFO 2>&1
