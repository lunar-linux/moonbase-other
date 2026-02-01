CFLAGS+=" -ffat-lto-objects"

cd contrib/minizip
autoreconf -fvi &&

# https://github.com/madler/zlib/pull/229
./configure --prefix=/usr --enable-static=no --includedir=/usr/include &&
make &&

prepare_install
make install 

#ln -sf /usr/lib/minizip/pkgconfig/minizip.pc /usr/lib/pkgconfig/minizip.pc &&

rm -f /usr/include/minizip/crypt.h
