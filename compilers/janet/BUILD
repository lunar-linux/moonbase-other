janet_build='JANET_BUILD=\"f7ee8bd\"'

make PREFIX="/usr" $janet_build &&
make PREFIX="/usr" build/janet.pc &&
make PREFIX="/usr" docs &&

prepare_install &&

install -Dt /usr/bin build/janet jpm &&
install -Dm644 -t /usr/include/janet src/include/janet.h src/conf/janetconf.h &&

#install -Dm644 -t /usr/lib build/libjanet.a build/libjanet.so &&
install -Dm644 -t /usr/lib build/libjanet.so &&
ln -sf libjanet.so /usr/lib/libjanet.so.${VERSION} &&

install -Dm644 build/janet.pc /usr/lib/pkgconfig/ &&

install -Dm644 -t /usr/share/man janet.1 jpm.1 &&

install -dm755 /usr/share/janet &&
cp -a examples /usr/share/janet &&

mkdir -p /usr/share/doc/janet &&
install -Dm644 build/doc.html /usr/share/doc/janet/
