(

   patch_it $SOURCE_CACHE/$SOURCE2 0 &&

   ./configure  --prefix=${GNOME26_PREFIX:-/usr}  \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=${GNOME26_PREFIX:-/usr}/share/info \
                --mandir=${GNOME26_PREFIX:-/usr}/share/man   \
                --with-popt                       \
                $OPTS                             &&

    default_make  &&

    gather_docs HACKING

) > $C_FIFO 2>&1
