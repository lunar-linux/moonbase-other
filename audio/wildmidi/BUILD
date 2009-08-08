(

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  patch_it $SOURCE_CACHE/$SOURCE3 1 &&
  patch_it $SOURCE_CACHE/$SOURCE4 1 &&
  patch_it $SOURCE_CACHE/$SOURCE5 1 &&

  autoreconf -fi &&
  OPTS+=" --disable-static --disable-werror --without-arch" &&
  default_build

) > $C_FIFO 2>&1
