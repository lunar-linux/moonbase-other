(

   if module_installed openssl ; then
        OPTS="$OPTS --enable-openssl \
                    --with-openssl-includes=/usr/include/openssl \
                    --with-openssl-libs=/usr/lib \
                    --disable-gnutls"
   else
        OPTS="$OPTS --enable-gnutls --disable-openssl"
   fi &&

   ./configure  --prefix=${GNOME210_PREFIX:-/usr}  \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=${GNOME210_PREFIX:-/usr}/share/info \
                --mandir=${GNOME210_PREFIX:-/usr}/share/man   \
                --enable-cdda                          \
                $OPTS                             &&
    default_make

) > $C_FIFO 2>&1
