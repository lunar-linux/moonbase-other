(

   ./configure  --prefix=${GNOME26_PREFIX:-/usr}  \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=${GNOME26_PREFIX:-/usr}/share/info \
                --mandir=${GNOME26_PREFIX:-/usr}/share/man   \
                --enable-ipv6                     \
                --enable-gtk-doc                  \
                $OPTS                             &&
    default_make                                  &&
    echo "trash:    libvfolder-desktop.so">>${D}/etc/gnome-vfs-2.0/modules/default-modules.conf

) > $C_FIFO 2>&1
