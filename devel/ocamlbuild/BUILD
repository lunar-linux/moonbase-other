make configure PREFIX=/usr BINDIR=/usr/bin LIBDIR=/usr/lib MANDIR=/usr/share/man &&
export CHECK_IF_PREINSTALLED=false
sedit 's:/root/.opam/default:/usr:g' Makefile.config &&
make &&

prepare_install &&
make install
