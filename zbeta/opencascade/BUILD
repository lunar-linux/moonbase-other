(

  cd ros &&

  patch_it $SOURCE2 0 &&

  ./build_configure &&

  export CFLAGS+=" -fpermissive" &&
  export CXXFLAGS+=" -fpermissive" &&

  if in_depends $MODULE qt4 ; then
     . /etc/profile.d/qt4.rc 
  fi &&

  OPTS+=" --disable-debug --enable-production --prefix=/usr" &&

  default_build

) > $C_FIFO 2>&1
