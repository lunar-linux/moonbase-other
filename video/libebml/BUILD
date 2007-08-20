(

  cd ./make/linux  &&
  sedit "s:/usr/local:/usr:" Makefile  &&
  sedit "s:ln -s:ln -fs:"    Makefile  &&
  default_make
  
) > $C_FIFO 2>&1
