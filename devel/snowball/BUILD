make &&

prepare_install &&

install -Dt /usr/bin snowball stemwords &&
install -Dm644 {.,/usr}/include/libstemmer.h &&
install -Dm644 libstemmer.so.0 "/usr/lib/libstemmer.so.0.0.0" &&
ln -s libstemmer.so.0.0.0 "/usr/lib/libstemmer.so.0" &&
ln -s libstemmer.so.0 "/usr/lib/libstemmer.so"
