(

   ./configure  --prefix=${GNOME28_PREFIX:-/usr}  \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=${GNOME28_PREFIX:-/usr}/share/info \
                --mandir=${GNOME28_PREFIX:-/usr}/share/man   \
                --enable-ipv6                     \
                --enable-gtk-doc                  \
                $OPTS                             &&
    default_make                                  &&
    echo "trash:    libvfolder-desktop.so">>${D}/etc/gnome-vfs-2.0/modules/default-modules.conf

) > $C_FIFO 2>&1
