(
    cd $SOURCE_DIRECTORY &&
    ./configure --prefix=/usr --disable-gtk-doc $OPTS &&
    make &&
    touch docs/html/index.sgml &&
    prepare_install &&
    make install
) > $C_FIFO
