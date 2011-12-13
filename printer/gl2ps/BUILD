(

  if in_depends $MODULE qt4; then
    . /etc/profile.d/qt4.rc
  fi  &&

  LDFLAGS+=" -lm" &&

  default_cmake_build

) > $C_FIFO 2>&1
