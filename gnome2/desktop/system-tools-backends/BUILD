(

   ./configure  --prefix=${GNOME210_PREFIX:-/usr} \
                --build=$BUILD          \
                --sysconfdir=/etc       \
                --localstatedir=/var    \
                --with-stb-group=wheel  \
                --infodir=${GNOME210_PREFIX:-/usr}/share/info  \
                --mandir=${GNOME210_PREFIX:-/usr}/share/man    \
                $OPTS                                         &&
    default_make

) > $C_FIFO 2>&1
