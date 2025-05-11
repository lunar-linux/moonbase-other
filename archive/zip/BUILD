# use ours
sed -e "/^CFLAGS_NOOPT =/s/\$/ $CPPFLAGS $CFLAGS/" -i unix/Makefile &&

make -f unix/Makefile prefix=/usr generic_gcc CC="gcc -std=gnu89" &&

prepare_install &&
make -f unix/Makefile prefix=/usr MANDIR=/usr/share/man/man1 install
