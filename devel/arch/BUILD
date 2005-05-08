(
 
  cd $SOURCE_DIRECTORY/src    &&
  mkdir -p build              &&
  cd build                    &&

  ../configure --prefix=/usr  &&

  make                        &&
  prepare_install             &&
  make test                   &&
  make install                &&
  mkdir -p $DOCUMENT_DIRECTORY/$MODULE/ &&
  cp -a $SOURCE_DIRECTORY/src/docs-tla/* $DOCUMENT_DIRECTORY/$MODULE &&
  rm -rf $DOCUMENT_DIRECTORY/$MODULE/\{arch\} \
         $DOCUMENT_DIRECTORY/$MODULE/PLUGIN   \
         $DOCUMENT_DIRECTORY/$MODULE/\=*

) > $C_FIFO 2>&1
