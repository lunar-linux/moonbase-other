(

   ./configure  --prefix=${GNOME26_PREFIX:-/usr}  \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=${GNOME26_PREFIX:-/usr}/share/info \
                --mandir=${GNOME26_PREFIX:-/usr}/share/man   \
                $OPTS                             &&
    default_make                                  &&

if module_installed gnomesu; then
  cp $SOURCE_CACHE/$SOURCE2 /usr/share/applications
fi

) > $C_FIFO 2>&1

