(

  OPTS="--with-jsapi-include=/usr/include/js/ $OPTS"

  mkdir build  &&
  cd build     &&
  cmake .. -DCMAKE_INSTALL_PREFIX:=/usr &&
  default_make

) > $C_FIFO 2>&1
