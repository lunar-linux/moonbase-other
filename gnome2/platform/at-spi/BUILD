(

   # 1.30.1 fails when installing schemas, so added --disable-schemas-install

   ./configure  --prefix=${GNOME210_PREFIX:-/usr}  \
                --build=$BUILD        \
                --sysconfdir=/etc     \
                --localstatedir=/var  \
                --infodir=${GNOME210_PREFIX:-/usr}/share/info  \
                --mandir=${GNOME210_PREFIX:-/usr}/share/man    \
                --disable-schemas-install                      \
                $OPTS                                         &&

    # change Makefile spaces to tabs...
    sedit 's:^                if :\t\tif :' Makefile  &&

    default_make

) > $C_FIFO 2>&1
