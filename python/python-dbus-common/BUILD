DESTDIR=$SOURCE_DIRECTORY/__dest
mkdir python3 &&
pushd python3 &&
../configure --prefix=/usr &&
sedit 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool &&
make &&
make DESTDIR=$DESTDIR install-data &&
rm -r "$DESTDIR"/usr/lib/python* &&
prepare_install &&
cp -rf --remove-destination $DESTDIR/* /
