mkdir build && cd build

cmake -DCMAKE_INSTALL_PREFIX=/usr \
      -DPLUGINS="ALL" \
      -DTOOLS="ALL" \
      -DBUILD_STATIC=OFF \
      -DBINDINGS="ALL" \
      -DSWIG_EXECUTABLE="/usr/bin/swig" \
      -DCMAKE_C_FLAGS:STRING=" -fcommon" \
      -DCMAKE_CXX_FLAGS:STRING=" -fcommon" \
      -DLUA_INCLUDE_DIR=/usr/include \
      -DLUA_LIBRARY=/usr/lib/liblua.so ..

default_make
