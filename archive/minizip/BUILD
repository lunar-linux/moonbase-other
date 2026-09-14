CFLAGS+=" -ffat-lto-objects"

cd contrib/minizip &&

OPTS+=" -DMINIZIP_BUILD_STATIC=OFF \
        -DCMAKE_INSTALL_INCLUDEDIR=include/minizip \
        -DCMAKE_INSTALL_OLDINCLUDEDIR=/usr/include/minizip \
        -DMINIZIP_BUILD_TESTING=OFF \
        -DMINIZIP_ENABLE_BZIP2=OFF"

default_cmake_build

ln -sf /usr/lib/minizip/pkgconfig/minizip.pc /usr/lib/pkgconfig/minizip.pc
