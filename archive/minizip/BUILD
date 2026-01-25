CFLAGS+=" -ffat-lto-objects"

cd contrib/minizip
autoreconf -fvi &&

# https://github.com/madler/zlib/pull/229
./configure --prefix=/usr --enable-static=no --includedir=/usr/include/minizip --libdir=/usr/lib/minizip &&
make &&

prepare_install
make install 

rm -f /usr/include/minizip/crypt.h
