(

    patch_it $SOURCE_CACHE/$SOURCE2 0 &&

    cd src/ &&
    patch_it $SOURCE_CACHE/$SOURCE3 0 &&
    cd $SOURCE_DIRECTORY &&

    ./configure --enable-gtk2                    \
                --prefix=/usr                    \
                       --sysconfdir=/etc         \
                       --localstatedir=/var      \
                       --infodir=/usr/share/info \
                       --mandir=/usr/share/man   \
               $OPTS                            &&
       
    default_make

) > $C_FIFO 2>&1
