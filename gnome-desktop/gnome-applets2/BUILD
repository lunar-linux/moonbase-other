(
 
   patch_it $SOURCE_CACHE/$SOURCE2 1              &&
   ./configure  --prefix=${GNOME26_PREFIX:-/usr}  \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=${GNOME26_PREFIX:-/usr}/share/info \
                --mandir=${GNOME26_PREFIX:-/usr}/share/man   \
                --enable-ipv6                     \
                $OPTS                             &&
    default_make                   

) > $C_FIFO 2>&1
