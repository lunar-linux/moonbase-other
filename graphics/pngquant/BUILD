
# It's configure is pretty dumb, doesn't know what to do with our --build
pushd lib > /dev/null
./configure --prefix=/usr &&
make shared &&
popd > /dev/null &&

./configure --prefix=/usr --with-lcms2 --with-libpng=/usr/lib/libpng.so &&
default_make &&

mkdir -p /usr/include/$MODULE &&
install -m 755 lib/*.h /usr/include/$MODULE &&
install -m 755 lib/libimagequant.{a,so} /usr/lib &&
ln -sf /usr/lib/libimagequant.so /usr/lib/libimagequant.so.0
