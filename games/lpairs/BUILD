(

  sedit "s:/games/:/:"  configure.in  &&
  touch  -r  configure  configure.in  &&
  ./configure  $OPTS  &&
  sedit "s:automake-1.9:automake:" Makefile  &&
  sedit "s:aclocal-1.9:aclocal:"  Makefile  &&
  default_make
  
) > $C_FIFO 2>&1
