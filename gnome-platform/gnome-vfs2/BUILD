(

   ./configure  --prefix=${GNOME210_PREFIX:-/usr}  \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=${GNOME210_PREFIX:-/usr}/share/info \
                --mandir=${GNOME210_PREFIX:-/usr}/share/man   \
                $OPTS                             &&
    default_make                                  &&
    echo "trash:    libvfolder-desktop.so">>${D}/etc/gnome-vfs-2.0/modules/default-modules.conf

) > $C_FIFO 2>&1
