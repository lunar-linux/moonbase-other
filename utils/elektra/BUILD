mkdir build && cd build

cmake -DCMAKE_INSTALL_PREFIX=/usr \
      -DPLUGINS="ALL" \
      -DTOOLS="ALL" \
      -DBUILD_STATIC=OFF \
      -DBINDINGS="ALL" \
      -DSWIG_EXECUTABLE="/usr/bin/swig" \
      -DLUA_INCLUDE_DIR=/usr/include \
      -DLUA_LIBRARY=/usr/lib/liblua.so ..

default_make
