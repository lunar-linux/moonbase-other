(

  export CFLAGS="$CFLAGS -fPIC"
  OPTS="$OPTS --with-drm"

  ./bootstrap       &&
  touch INSTALL     &&
  mkdir plugins/bmp &&
  autoreconf -vif   &&

  default_build

) > $C_FIFO 2>&1
