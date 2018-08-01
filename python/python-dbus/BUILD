DESTDIR=$SOURCE_DIRECTORY/__dest
mkdir python3 &&
pushd python3 &&
../configure --prefix=/usr &&
sedit 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool &&
make &&
make DESTDIR=$DESTDIR install &&
rm -rf "$DESTDIR"/usr/share &&
rm -r "$DESTDIR"/usr/include &&
rm -r "$DESTDIR"/usr/lib/pkgconfig &&
prepare_install &&
cp -rf --remove-destination $DESTDIR/* /
