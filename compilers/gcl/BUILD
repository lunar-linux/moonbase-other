(
  cd $SOURCE_DIRECTORY     &&
  ./configure $OPTS        &&
  make                     &&
  DESTDIR=/ make install

) > $C_FIFO 2>&1
