export CFLAGS="$CFLAGS -fPIC" &&

cd contrib/minizip &&
libtoolize -cfi &&
autoreconf -fis &&

default_build &&

# https://github.com/madler/zlib/pull/229
rm /usr/include/minizip/crypt.h
