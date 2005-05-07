(

   ./configure  --prefix=${GNOME26_PREFIX:-/usr}  \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=${GNOME26_PREFIX:-/usr}/share/info \
                --mandir=${GNOME26_PREFIX:-/usr}/share/man   \
                $OPTS                             &&
    default_make                                  &&
    ln -sf /usr/lib/mono/gac/gecko-sharp/1.0.0.0__ccf7d78a55e9f021/gecko-sharp.dll /usr/lib/mono/gecko-sharp/gecko-sharp.dll    

) > $C_FIFO 2>&1
