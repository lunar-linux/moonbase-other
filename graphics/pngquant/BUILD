rm -rf lib &&
ln -sf libimagequant-$VERSION lib &&

pushd lib > /dev/null &&
./configure --prefix=/usr &&
make shared &&
popd > /dev/null &&

./configure --prefix=/usr --with-libpng=/usr/lib/libpng.so --with-lcms2 &&

pushd libimagequant-$VERSION > /dev/null &&
make shared imagequant.pc &&A
popd > /dev/null &&

default_make

mkdir -p /usr/include/$MODULE &&
install -m 644 lib/*.h /usr/include/$MODULE &&
install -m 755 lib/libimagequant.so /usr/lib &&
install -m 644 lib/imagequant.pc /usr/lib/pkgconfig &&
ln -sf /usr/lib/libimagequant.so /usr/lib/libimagequant.so.0
