(

   ./configure  --prefix=${GNOME210_PREFIX:-/usr}  \
                --build=$BUILD        \
                --sysconfdir=/etc     \
                --localstatedir=/var  \
                --enable-a4-paper     \
                --infodir=${GNOME210_PREFIX:-/usr}/share/info  \
                --mandir=${GNOME210_PREFIX:-/usr}/share/man    \
                $OPTS                                         &&
    default_make


) > $C_FIFO 2>&1
