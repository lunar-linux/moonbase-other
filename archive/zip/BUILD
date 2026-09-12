# use ours
sedit "/^CFLAGS_NOOPT =/s/\$/ $CPPFLAGS $CFLAGS/" unix/Makefile &&
sedit 's/ -DNO_DIR//' unix/configure &&

make -f unix/Makefile prefix=/usr generic_gcc CC="gcc -std=gnu89" &&

prepare_install &&
make -f unix/Makefile prefix=/usr MANDIR=/usr/share/man/man1 install
