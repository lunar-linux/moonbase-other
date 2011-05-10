(

  OPTS+=" --disable-static"  &&

  export DEBUG=-DNDEBUG  &&

  default_build     &&
  make install-dev  &&
  make install-lib

) > $C_FIFO 2>&1
