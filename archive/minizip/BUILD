CFLAGS+=" -ffat-lto-objects"

cd contrib/minizip &&
autoreconf -fvi &&

OPTS+=" -includedir=/usr/include/ --libdir=/usr/lib/minizip"

default_build

ln -sf /usr/lib/minizip/pkgconfig/minizip.pc /usr/lib/pkgconfig/minizip.pc
