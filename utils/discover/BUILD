(

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  default_config && 
  make &&
  make check &&
  prepare_install &&
  make install

) > $C_FIFO 2>&1
