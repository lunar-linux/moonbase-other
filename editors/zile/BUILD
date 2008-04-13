(
  
  patch_it $SOURCE_CACHE/$SOURCE2 0 &&
  autoreconf &&
  OPTS="$OPTS --enable-shell-mode --enable-mail-mode" &&
  default_build
  
) > $C_FIFO 2>&1
