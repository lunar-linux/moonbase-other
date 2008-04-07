(
    patch_it $SOURCE_CACHE/$SOURCE3 1          &&
    ./configure --enable-gtk2                  \
                --prefix=/usr             \
                       --sysconfdir=/etc         \
                       --localstatedir=/var      \
                       --infodir=/usr/share/info \
                       --mandir=/usr/share/man   \
               $OPTS                     &&
    default_make                         &&

    mkdir -p /usr/lib/$MODULE-$MAJOR_VERSION/bin/ &&
    install -m0755 $SOURCE_CACHE/$SOURCE2 /usr/lib/$MODULE-$MAJOR_VERSION/bin/cdrecord.prodvd

) > $C_FIFO 2>&1
