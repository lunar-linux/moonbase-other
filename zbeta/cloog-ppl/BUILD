(

  CFLAGS="$CFLAGS -I/usr/include/polylib"  &&

  OPTS="--with-ppl --disable-static"  &&

  sedit "s:ppl_minor_version=10:ppl_minor_version=11:"  configure  &&

  default_build

) > $C_FIFO 2>&1
