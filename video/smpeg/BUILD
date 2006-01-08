(

  ./configure  --prefix=/usr    \
               $OPTS           &&
  sedit 's/gcc/g++/' Makefile  &&
  default_make

) > $C_FIFO 2>&1
