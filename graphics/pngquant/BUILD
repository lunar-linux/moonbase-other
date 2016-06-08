OPTS+=" --build=$BUILD" &&

# It's configure is pretty dumb, doesn't know what to do with our --build
pushd lib > /dev/null
./configure --prefix=/usr &&
make &&
popd > /dev/null

./configure --prefix=/usr &&
default_make

mkdir -p /usr/include/$MODULE &&
install -m 755 lib/*.h /usr/include/$MODULE &&
install -m 755 lib/libimagequant.{a,so} /usr/lib &&
ln -sf /usr/lib/libimagequant.so /usr/lib/libimagequant.so.0
