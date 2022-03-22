cd $SOURCE_DIRECTORY/build/gcc &&

make release shared &&

prepare_install &&

install -Dm0755 bin/astyle /usr/bin/astyle &&
install -Dm0755 bin/libastyle.so.${VERSION}.0 /usr/lib/libastyle.so.${VERSION} &&
ln -sf libastyle.so.${VERSION} /usr/lib/libastyle.so.${VERSION%%\.*} &&
ln -sf libastyle.so.${VERSION} /usr/lib/libastyle.so &&

# install header
install -Dm0644 ../../src/astyle.h -t /usr/include
