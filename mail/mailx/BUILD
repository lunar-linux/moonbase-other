(

  patch_it $SOURCE_CACHE/$SOURCE2 1                            &&
  sedit "s/usr\/man\/man1/usr\/share\/man\/man1/" Makefile     &&
  make                                                         &&
  prepare_install  &&
  make    install

) > $C_FIFO 2>&1
