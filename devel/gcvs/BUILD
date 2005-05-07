(

  bad_flags ALL &&
  patch_it $SOURCE_CACHE/$SOURCE2 0 &&
  default_config &&
  cd cvsunix &&
  ./configure --prefix=/usr/lib/gcvs &&
  cd .. &&
  default_make

) > $C_FIFO 2>&1
