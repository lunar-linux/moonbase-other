(
 
  cd  $SOURCE_DIRECTORY/src              &&
  mkdir -p build                         &&
  cd  build                              &&

  ../configure       --prefix=/usr       &&

  make                                   &&
  prepare_install                        &&
  make    test                           &&
  make    install                        &&
  mkdir -p $DOCUMENT_DIRECTORY/$MODULE/html &&
  cp $SOURCE_DIRECTORY/src/docs-tla/html/* $DOCUMENT_DIRECTORY/$MODULE/html

) > $C_FIFO 2>&1
