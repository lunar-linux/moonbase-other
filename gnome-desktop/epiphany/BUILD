(

   if [[ "$DESKTOP_PLUGIN" == "y" ]]; then
     OPTS="$OPTS --enable-deskop-file-plugin"
   fi

   if [[ "$ZEROCONF_BOOKMARKS" == "y" ]]; then
     OPTS="$OPTS --enable-zeroconf"
   fi

   if [[ "$CERTIFICATE_MANAGER" == "y" ]]; then
     OPTS="$OPTS --enable-certificate-manager"
   fi
 
   ./configure  --prefix=${GNOME210_PREFIX:-/usr}             \
                --build=$BUILD                                \
                --sysconfdir=/etc                             \
                --localstatedir=/var                          \
                --infodir=${GNOME210_PREFIX:-/usr}/share/info \
                --mandir=${GNOME210_PREFIX:-/usr}/share/man   \
                $OPTS                                         &&
    default_make

) > $C_FIFO 2>&1
