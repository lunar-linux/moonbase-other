(

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  ./configure  --prefix=/usr        &&
  sedit 's/gcc/g++/' Makefile       &&
  default_make

) > $C_FIFO 2>&1
