(
  
#  cd src &&
  cp makefile.u Makefile &&

  make hadd &&
  export LIBDIR+=" /usr/lib" &&
  export CFLAGS+=" $CFLAGS -DNON_UNIX_STDIO -fPIC" &&

  default_make

) > $C_FIFO 2>&1
