export CFLAGS="$CFLAGS -fPIC"

OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -DJAS_ENABLE_DOC=NO  \
        -DCMAKE_SKIP_RPATH=ON \
        -DJAS_ENABLE_SHARED=ON \
        -DJAS_ENABLE_AUTOMATIC_DEPENDENCIES=OFF \
        -DALLOW_IN_SOURCE_BUILD=ON"

default_cmake_build
