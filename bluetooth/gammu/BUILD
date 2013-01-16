(

  if in_depends $MODULE Python ; then
    VER=`lvu version Python | cut -c 1-3` &&
    OPTS="-DBUILD_PYTHON=/usr/bin/python$VER"
   else
    OPTS="-DWITH_PYTHON=OFF"
  fi &&

  OPTS+=" -DBUILD_SHARED_LIBS=ON -DENABLE_PROTECTION=OFF -DINSTALL_LSB_INIT=OFF" &&

  default_cmake_build &&

  if in_depends $MODULE systemd ; then
  install ../contrib/udev/45-nokiadku2.rules /usr/lib/udev/rules.d
  fi

) > $C_FIFO 2>&1
