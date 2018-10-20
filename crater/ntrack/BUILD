
  if in_depends $MODULE qt4 ; then
    . /etc/profile.d/qt4.rc
  fi &&

# qt4 is defunct.
  OPTS+=" --disable-static --enable-backend=libnl --without-qt4" &&

  default_build
