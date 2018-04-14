find . -iwholename '*cmake*' \
       -not -name CMakeLists.txt \
       -not -name utils.cmake \
       -delete &&
rm -fv Makefile &&
cp -r src/* include/$MODULE/* . &&

mkdir -p build &&
cd build &&

cmake .. -DCMAKE_INSTALL_PREFIX=/usr \
         -DBUILD_SHARED_LIBS=ON \
         -G Ninja &&
ninja &&

prepare_install &&

cd $SOURCE_DIRECTORY &&

install -Dm644 utf8proc.h /usr/include/utf8proc.h &&
install -Dm644 $SCRIPT_DIRECTORY/libutf8proc.pc /usr/lib/pkgconfig/libutf8proc.pc && 
install -Dm644 build/libutf8proc.so.$MAJOR /usr/lib/libutf8proc.so.$MAJOR &&
ln -s /usr/lib/libutf8proc.so.$MAJOR /usr/lib/libutf8proc.so.${MAJOR:0:1} &&
ln -s /usr/lib/libutf8proc.so.$MAJOR /usr/lib/libutf8proc.so
