default_cmake_build &&

cd .. &&

# install X font
install -D -m644 mtx.pcf /usr/share/fonts/misc/ &&

# install console font
install -D -m644 matrix.fnt /usr/share/kbd/consolefonts/ &&
install -D -m644 matrix.psf.gz /usr/share/kbd/consolefonts/ &&

for i in AUTHORS NEWS COPYING README ChangeLog INSTALL; do
    install -Dm644 $i "/usr/share/doc/$MODULE/$i"
done &&

install -Dm644 cmatrix.1 /usr/share/man/man1/
