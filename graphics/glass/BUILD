(

  export CFLAGS="$CFLAGS -fPIC"

  sedit "s:/usr/local/lib:/usr/lib:" Makefile               &&
  sedit "s:/usr/local/include/glass:/usr/include:" Makefile &&
  sedit "s:CFLAGS = -g:CFLAGS = -g -fPIC:" src/Makefile     &&

  default_make

) > $C_FIFO 2>&1
