(
   
   ./configure  --prefix=${GNOME26_PREFIX:-/usr}  \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=${GNOME26_PREFIX:-/usr}/share/info \
                --mandir=${GNOME26_PREFIX:-/usr}/share/man   \
                --enable-ipv6                     \
                --enable-gnomefe                  \
                $OPTS                             &&
    default_make                                  &&
    cp /usr/share/xchat/xchat-gnome-small.png /usr/share/pixmaps &&
    sed -i -e "s:Exec=xchat:Exec=xchat-gnome:" /usr/share/applications/xchat.desktop &&
    sed -i -e "s:Icon=xchat.png:Icon=xchat-gnome-small.png:" /usr/share/applications/xchat.desktop 
) > $C_FIFO 2>&1
