(
   ./configure  --prefix=${GNOME28_PREFIX:-/usr}  \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=${GNOME2*_PREFIX:-/usr}/share/info \
                --mandir=${GNOME2*_PREFIX:-/usr}/share/man   \
                $OPTS                             &&
    default_make

) > $C_FIFO 2>&1
