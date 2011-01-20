(

  # Fixes bugs, and compilation with >= libgdata-0.7
  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  OPTS+=" --without-weather --enable-largefile --enable-ipv6"  &&

  # For the patches to configure.ac to take effect
  intltoolize --force --copy --automake  &&
  autoreconf -fi  &&

  default_build

) > $C_FIFO 2>&1
