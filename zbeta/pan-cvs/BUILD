(
  cd $BUILD_DIRECTORY/pan/               &&
  ./autogen.sh                           &&
  ./configure --prefix=/usr              &&
  make                                   &&
  prepare_install                        &&
  make install                           

) > $C_FIFO 2>&1
