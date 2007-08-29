(

  sedit 's@cvsunix@@g' configure &&
  patch_it $SOURCE2 1 &&
  default_config &&

  cd cvsunix &&
  ./configure --prefix=/usr/lib/gcvs &&
  cd .. &&
  default_make

) > $C_FIFO 2>&1
