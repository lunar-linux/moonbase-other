(

  OPTS+=" --disable-static --disable-builddocs" &&

  # Fixes ruby bindings build. Gentoo patch.
  patch_it $SOURCE2 1 &&

  default_build

) > $C_FIFO 2>&1
