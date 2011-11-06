(
  make clean &&
  patch_it $SOURCE2 1 &&
  make &&
  prepare_install &&
  make install &&
  depmod

) > $C_FIFO 2>&1
