export CFLAGS+=" -fPIC" &&

make &&
make test &&

prepare_install &&

install -m0755 libjbig/libjbig.a /usr/lib     &&
install -m0644 libjbig/jbig.h    /usr/include &&
install -m0644 libjbig/jbig_ar.h /usr/include &&
install -m0755 libjbig/tstcodec  /usr/bin     &&
install -m0755 pbmtools/jbgtopbm /usr/bin     &&
install -m0755 pbmtools/pbmtojbg /usr/bin     &&

install -d /usr/share/man/man{1,5} &&
install -m0644 pbmtools/*.5 /usr/share/man/man5 &&
install -m0644 pbmtools/*.1 /usr/share/man/man1 &&

gather_docs libjbig/jbig.doc pbmtools/*.txt
