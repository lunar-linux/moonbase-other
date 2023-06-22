if in_depends $MODULE lld; then
  export CC=clang &&
  export CXX=clang++
fi &&

PYTHON_VER="$(installed_version python | cut -d. -f1-2)" &&

OPTS+=" -DWITH_PYTHON=ON \
        -DWITH_INSTALL_PORTABLE=OFF \
        -DWITH_STATIC_LIBS=OFF \
        -DWITH_PYTHON_INSTALL=ON \
        -DPYTHON_VERSION=$PYTHON_VER \
        -DPYTHON_LIBPATH=/usr/lib \
        -DPYTHON_LIBRARY=python$PYTHON_VER \
        -DCMAKE_CXX_FLAGS=-I/usr/include/python$PYTHON_VER \
        -DWITH_PYTHON_INSTALL_NUMPY=ON \
        -DWITH_SYSTEM_GLEW=ON \
        -DWITH_SYSTEM_EIGEN3=ON \
        -DWITH_SYSTEM_LZO=ON \
        -DWITH_SYSTEM_FREETYPE=ON \
      " &&

default_cmake_build
