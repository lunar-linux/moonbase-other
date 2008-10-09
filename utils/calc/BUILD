(
  
  sedit "s/^LD_DEBUG=/LD_DEBUG= $LDFLAGS/" Makefile &&
  default_make &&
  gather_docs BUGS LIBRARY

) >$C_FIFO 2>&1
