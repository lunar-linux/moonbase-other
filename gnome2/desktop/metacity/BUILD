(

    if [ "$XINER" == "y" ] ; then
    OPTS="$OPTS --enable-xinerama"
    fi

   ./configure  --prefix=${GNOME210_PREFIX:-/usr}  \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=${GNOME210_PREFIX:-/usr}/share/info \
                --mandir=${GNOME210_PREFIX:-/usr}/share/man   \
                $OPTS                             &&
    default_make                   

) > $C_FIFO 2>&1
