(
  patch_it $SOURCE2 1 && 
  cd config &&
  autoconf  &&
  cd ..     &&
  OPTS="--disable-gui $OPTS"  &&
  default_build
) > $C_FIFO 2>&1
