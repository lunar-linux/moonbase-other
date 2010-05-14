(

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&
  sedit "s/usr\/local/usr/" Makefile.m4  &&
  prepare_install  &&
  make +rpl8  &&
  make install
  
) > $C_FIFO 2>&1
