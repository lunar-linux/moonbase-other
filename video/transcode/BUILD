(

  if module_installed xserver; then
    OPTS="$OPTS --enable-x"
  else
    OPTS="$OPTS --disable-x"
  fi &&

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  patch_it $SOURCE_CACHE/$SOURCE3 1 &&
  patch_it $SOURCE_CACHE/$SOURCE4 1 &&
  default_build

) > $C_FIFO 2>&1
