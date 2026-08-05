DESTDIR=$SOURCE_DIRECTORY/_dest
mkdir python2 &&
pushd python2 &&
../configure --prefix=/usr PYTHON_VERSION=2 &&
sedit 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool &&
make &&
make DESTDIR=$DESTDIR install &&
rm -rf "$DESTDIR"/usr/share &&
rm -r "$DESTDIR"/usr/include &&
rm -r "$DESTDIR"/usr/lib/pkgconfig &&
prepare_install &&
cp -rf --remove-destination $DESTDIR/* /
