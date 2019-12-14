LDFLAGS+=" -ldl"

OPTS+=" -DPODOFO_BUILD_SHARED=ON \
        -DFREETYPE_INCLUDE_DIR=/usr/include/freetype2 \
        -DPODOFO_BUILD_SHARED=1"

if [ `arch` == "x86_64" ]; then
  OPTS+=" -DWANT_LIB64=ON"
  CFLAGS+=" -fPIC"
fi

flag-false
if module_installed lua; then
   lrm lua
   flag=true
fi

default_cmake_build &&

if [ flag ]; then
   lin lua
fi
