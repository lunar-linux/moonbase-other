(

  cd  $SOURCE_DIRECTORY/src              &&
  mkdir -p build                         &&
  cd  build                              &&
  ../configure       --prefix=/usr       &&

  make                                   &&
  prepare_install                        &&
  make    test                           &&
  make    install

) > $C_FIFO 2>&1
