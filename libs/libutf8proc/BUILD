mkdir -p build &&
cd build &&

cmake .. -DCMAKE_INSTALL_PREFIX=/usr \
         -DBUILD_SHARED_LIBS=ON \
         -G Ninja &&
ninja &&

prepare_install &&

cd $SOURCE_DIRECTORY &&

cp $SCRIPT_DIRECTORY/libutf8proc.pc ./ &&
sedit "s:@VERSION@:$VERSION:" libutf8proc.pc &&
install -Dm644 libutf8proc.pc /usr/lib/pkgconfig/ && 
install -Dm644 utf8proc.h /usr/include/utf8proc.h &&
install -Dm644 build/libutf8proc.so.$SOVER /usr/lib/
ln -s /usr/lib/libutf8proc.so.$SOVER /usr/lib/libutf8proc.so.${SOVER:0:1} &&
ln -s /usr/lib/libutf8proc.so.$SOVER /usr/lib/libutf8proc.so
