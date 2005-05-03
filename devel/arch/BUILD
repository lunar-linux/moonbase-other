(
 
  cd $SOURCE_DIRECTORY/src    &&
  mkdir -p build              &&
  cd build                    &&

  ../configure --prefix=/usr  &&

  make test                   &&
  default_make

) > $C_FIFO 2>&1
