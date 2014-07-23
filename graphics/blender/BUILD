(

  PYTHON_VER="`lvu version Python-3 | cut -c 1`" &&

  if in_depends $MODULE openjpeg ; then
    OPENJPEG_VER=`lvu version openjpeg | cut -c 1-3` &&
    OPTS+=" -DOPENJPEG_INCLUDE_DIR=/usr/include/openjpeg-${OPENJPEG_VER}"
  fi &&

  sedit "s:if(SUPPORT_SSE2_BUILD):if(WITH_SSE2 AND SUPPORT_SSE2_BUILD):" CMakeLists.txt &&

# For now adding -DWITH_INTERNATIONAL=OFF because of the recent boost bump.
  OPTS+=" -DPYTHON_VERSION=3.$PYTHON_VER -DPYTHON_LIBRARIES=/usr/lib/python3.$PYTHON_VER -DWITH_IMAGE_REDCODE=ON \
          -DPYTHON_INCLUDE_DIRS=/usr/include/python3.${PYTHON_VER}m -DWITH_PYTHON_INSTALL=OFF -DWITH_PLAYER=ON   \
          -DWITH_INSTALL_PORTABLE=OFF -DWITH_BUILDINFO=OFF -DWITH_INTERNATIONAL=OFF" &&

  default_cmake_build

) > $C_FIFO 2>&1
