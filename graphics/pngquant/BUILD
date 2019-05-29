rm -rf lib &&
ln -sf libimagequant-$VERSION lib &&

pushd lib > /dev/null &&
./configure --prefix=/usr &&
make shared &&
popd > /dev/null &&

./configure --prefix=/usr --with-libpng=/usr/lib/libpng.so --with-lcms2 &&
default_make &&

mkdir -p /usr/include/$MODULE &&
install -m 755 lib/*.h /usr/include/$MODULE &&
install -m 755 lib/libimagequant.{a,so} /usr/lib &&
ln -sf /usr/lib/libimagequant.so /usr/lib/libimagequant.so.0
