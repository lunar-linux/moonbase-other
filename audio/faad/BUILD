(

  export CFLAGS="$CFLAGS -fPIC"
  OPTS="$OPTS --with-drm"
  patch_it $SOURCE_CACHE/$SOURCE2 0 &&
  touch INSTALL &&
  mkdir plugins/bmp &&
  autoreconf -vif &&
  default_build

) > $C_FIFO 2>&1

