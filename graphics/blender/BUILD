(

  PYTHON_VER="`lvu version Python-3 | cut -c 1`" &&

  if in_depends $MODULE openjpeg ; then
    OPENJPEG_VER='lvu version openjpeg | cut -c 1-3' &&
    OPTS+=" -DOPENJPEG_INCLUDE_DIR=/usr/include/openjpeg-1.5"
  fi &&

  OPTS+=" -DPYTHON_VERSION=3.$PYTHON_VER -DPYTHON_LIBRARIES=/usr/lib/python3.$PYTHON_VER -DWITH_CYCLES=OFF      \
          -DPYTHON_INCLUDE_DIRS=/usr/include/python3.${PYTHON_VER}m -DWITH_PYTHON_INSTALL=OFF -DWITH_PLAYER=ON  \
          -DWITH_INSTALL_PORTABLE=OFF -DWITH_BUILDINFO=OFF" &&


  default_cmake_build 

) > $C_FIFO 2>&1
