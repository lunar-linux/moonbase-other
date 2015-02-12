
  cd metis-4.0 &&
  make  &&

  cd $SOURCE_DIRECTORY/ &&
  make CFLAGS+=" -fPIC" library &&
  prepare_install  &&
  make install     &&

  install metis-4.0/libmetis.a /usr/lib/
