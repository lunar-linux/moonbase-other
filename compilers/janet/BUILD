janet_build='JANET_BUILD=\"fa55283\"'

CFLAGS+=" -fPIC"

make PREFIX="/usr" $janet_build &&
make PREFIX="/usr" build/janet.pc &&
make PREFIX="/usr" docs &&

prepare_install &&

install -Dt /usr/bin build/janet &&
install -Dm644 -t /usr/include/janet src/include/janet.h &&

install -Dm644 -t /usr/lib build/libjanet.so &&
ln -sf libjanet.so /usr/lib/libjanet.so.${VERSION} &&

install -Dm644 build/janet.pc /usr/lib/pkgconfig/ &&

install -Dm644 -t /usr/share/man *.1 &&

install -dm755 /usr/share/janet &&
cp -a examples /usr/share/janet
