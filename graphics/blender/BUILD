
  PYTHON_VER="$(module_version Python-3 | cut -c1)" &&

# Has trouble finding llvm
  if in_depends $MODULE llvm && [[ `arch` == "x86_64" ]]; then
    OPTS+=" -DLLVM_LIBRARY=/usr/lib/libLLVM-$(module_version llvm).so"
  fi &&

  OPTS+=" -DWITH_IMAGE_REDCODE=ON \
          -DWITH_PYTHON_INSTALL=OFF \
          -DWITH_PYTHON_INSTALL_NUMPY=OFF \
          -DWITH_STATIC_LIBS=OFF \
          -DWITH_PYTHON=ON \
          -DWITH_PLAYER=ON   \
          -DWITH_INSTALL_PORTABLE=OFF \
          -DPYTHON_VERSION=3.4 \
          -DPYTHON_LIBRARY=/usr/lib/libpython3.${PYTHON_VER}m.so \
          -DPYTHON_REQUESTS_PATH=/usr/lib/python3.${PYTHON_VER}/site-packages/pip/_vendor/requests \
          -DPYTHON_LIBRARIES=/usr/lib/python3.${PYTHON_VER} \
          -DPYTHON_INCLUDE_DIRS=/usr/include/python3.${PYTHON_VER}m" &&

  default_cmake_config &&

  make&&

# We need to do it this way else make tanks
  python3 ../doc/manpage/blender.1.py bin/blender bin/blender.1 &&

  prepare_install &&
  make install
