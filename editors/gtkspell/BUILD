(
    cd $SOURCE_DIRECTORY &&
    ./configure --prefix=/usr $OPTS &&
    make &&
    touch docs/html/index.sgml &&
    prepare_install &&
    make install
) > $C_FIFO
