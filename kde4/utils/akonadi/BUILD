(

  export CFLAGS="$CFLAGS -fPIC" &&

  if [ -f /etc/profile.d/qt4.rc ]; then
    source /etc/profile.d/qt4.rc
  fi
  if [ -f /etc/profile.d/kde4.rc ]; then
    source /etc/profile.d/kde4.rc
  fi

  default_cmake_build

) > $C_FIFO 2>&1
