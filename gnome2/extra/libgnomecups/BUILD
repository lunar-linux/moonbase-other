(

   ./configure  --prefix=${GNOME28_PREFIX:-/usr}  \
                --build=$BUILD        \
                --sysconfdir=/etc     \
                --localstatedir=/var  \
                --infodir=${GNOME28_PREFIX:-/usr}/share/info  \
                --mandir=${GNOME28_PREFIX:-/usr}/share/man    \
                $OPTS                                        &&
    default_make

) > $C_FIFO 2>&1
