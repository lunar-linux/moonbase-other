(
  
  sedit "s/DEBUG= -O2 -g$/DEBUG= $CFLAGS/" Makefile      &&
  sedit "s/CALCPAGER= more$/#CALCPAGER= more/" Makefile  &&
  sedit "s/#CALCPAGER= less$/CALCPAGER= less/" Makefile  &&
  sedit "s/^LD_DEBUG=/LD_DEBUG= $LDFLAGS/" Makefile      &&
  default_make                      &&
  mkdir -p $DOCUMENT_DIRECTORY/calc &&
  cp BUGS LIBRARY $DOCUMENT_DIRECTORY/calc

) >$C_FIFO 2>&1
