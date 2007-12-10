(
  unset CPP &&
  patch_it $SOURCE2 1 &&
  patch_it $SOURCE3 1 &&
  OPTS+=" --without-tcl" &&
  default_build
  
) > $C_FIFO 2>&1
