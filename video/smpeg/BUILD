(

  ./configure  --prefix=/usr  &&
  sedit 's/gcc/g++/' Makefile  &&
  make                        &&
  prepare_install             &&
  make install

) > $C_FIFO 2>&1
