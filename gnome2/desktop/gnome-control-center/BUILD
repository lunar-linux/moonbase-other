(

# temporary hack here to acknowlege that dbus api is not yet to 1.0, remove this later
   export CPPFLAGS=$CPPFLAGS" -DDBUS_API_SUBJECT_TO_CHANGE=1"
   ./configure  --prefix=${GNOME210_PREFIX:-/usr} \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=${GNOME210_PREFIX:-/usr}/share/info \
                --mandir=${GNOME210_PREFIX:-/usr}/share/man   \
                $OPTS                             &&
    default_make                   

) > $C_FIFO 2>&1
