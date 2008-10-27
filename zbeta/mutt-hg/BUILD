OPTS=$OPTS" --enable-pop                     \
            --enable-imap                    \
            --with-mailpath=/var/spool/mail  \
            --with-docdir=/usr/share/doc/$MODULE"
(
   echo OPTS:= $OPTS                      &&
   autoreconf --install --include=m4      &&
   ./prepare    --build=$BUILD            \
                --prefix=/usr             \
                --sysconfdir=/etc         \
                --localstatedir=/var      \
                --infodir=/usr/share/info \
                --mandir=/usr/share/man   \
                $OPTS                     &&
   default_make

) > $C_FIFO 2>&1
