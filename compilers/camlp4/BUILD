CFLAGS+=' -ffat-lto-objects -w'

./configure --bindir=/usr/bin --libdir=/usr/lib/ocaml --pkgdir=/usr/lib/ocaml &&

make all camlp4/META &&
prepare_install &&

make BINDIR=/usr/bin LIBDIR=/usr/lib/ocaml PKGDIR=/usr/lib/ocaml install-META
