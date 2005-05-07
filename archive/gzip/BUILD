(

./configure --build=$BUILD            \
            --prefix=/usr             \
            --bindir=/bin             \
            --infodir=/usr/share/info \
            --mandir=/usr/share/man   &&
make &&
prepare_install &&
make bindir=/bin install

) > $C_FIFO 2>&1
