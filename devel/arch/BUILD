(
 
  cd  $SOURCE_DIRECTORY/src              &&
  cd tla				 &&
  patch_it /var/spool/lunar/$SOURCE2 1			 &&
  cd ..					 &&	
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
