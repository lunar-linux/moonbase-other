
  cd metis-4.0 &&
  make  &&

  if in_depends $MODULE tbb ; then
    CLFAGS+=" ${CFLAGS} -DHAVE_TBB"
  fi &&

  cd $SOURCE_DIRECTORY/ &&
  make CFLAGS+=" -fPIC" library &&
  prepare_install  &&
  make install     &&

  install metis-4.0/libmetis.a /usr/lib/
