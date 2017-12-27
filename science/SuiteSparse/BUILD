
  cd metis-4.0 &&
  make  &&

  cd $SOURCE_DIRECTORY/ &&

  if in_depends $MODULE tbb ; then
    make 
   else
    make
  fi &&

  prepare_install  &&
  make install     &&

  install metis-4.0/libmetis.a /usr/lib/
