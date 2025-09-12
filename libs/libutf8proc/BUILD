OPTS+=" -DBUILD_SHARED_LIBS=ON \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr"
 
cmake -B $MODULE-$VERSION $OPTS -G Ninja &&
ninja -C $MODULE-$VERSION &&

prepare_install &&
install -Dm644 utf8proc.h /usr/include/utf8proc.h &&
cd $MODULE-$VERSION &&
install -Dm644 libutf8proc.pc /usr/lib/pkgconfig/ && 
install -Dm644 libutf8proc.so.$SOVER /usr/lib/ &&
ln -s /usr/lib/libutf8proc.so.$SOVER /usr/lib/libutf8proc.so.${SOVER:0:1} &&
ln -s /usr/lib/libutf8proc.so.$SOVER /usr/lib/libutf8proc.so
