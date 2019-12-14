LDFLAGS+=" -ldl"

OPTS+=" -DPODOFO_BUILD_SHARED=ON \
        -DFREETYPE_INCLUDE_DIR=/usr/include/freetype2 \
        -DPODOFO_BUILD_SHARED=1"

if [ `arch` == "x86_64" ] ; then
  OPTS+=" -DWANT_LIB64=ON"
  CFLAGS+=" -fPIC"
fi

default_cmake_build
