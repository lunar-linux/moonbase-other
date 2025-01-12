
opts="PREFIX=/usr BINDIR=/usr/bin LOUTDOCDIR=/usr/share/doc/lout MANDIR=/usr/share/man/man1 LOUTLIBDIR=/usr/lib/lout" &&

make ${opts} PDF_COMPRESSION=1 ZLIB=-lz all &&
prepare_install &&
mkdir -p /usr/share/doc/lout &&
make -j1 ${opts} allinstall
