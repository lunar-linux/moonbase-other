(
  unset LDFLAGS
  unset CFLAGS
  unset CXXFLAGS

  cd $SOURCE_DIRECTORY &&
  ./configure --prefix=/usr &&
  make &&
  make install
) > $C_FIFO 2>&1
