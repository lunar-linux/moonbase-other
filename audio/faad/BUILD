(

  sedit "s:dnl AC_PROG:AC_PROG:" configure.in  &&

  export CFLAGS="$CFLAGS -fPIC"
  OPTS="$OPTS --with-drm"

  touch INSTALL     &&
  ./bootstrap       &&
  mkdir plugins/bmp &&
  autoreconf -vif   &&

  default_build

) > $C_FIFO 2>&1
