(

   ./configure  --prefix=${GNOME210_PREFIX:-/usr}  \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=${GNOME210_PREFIX:-/usr}/share/info \
                --mandir=${GNOME210_PREFIX:-/usr}/share/man   \
                $OPTS                             &&

    for f in $(find -name Makefile) ; do
      sedit 's/-DGTK_DISABLE_DEPRECATED=1//g' $f 
    done                                          &&
    default_make                   

) > $C_FIFO 2>&1
