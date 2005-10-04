OPTS=$OPTS" --enable-pop                     \
            --enable-imap                    \
            --disable-nls                    \
            --with-mailpath=/var/spool/mail  \
            --with-docdir=/usr/share/doc/$MODULE"
(
   patch_it $SOURCE_CACHE/$SOURCE2 1      &&
   default_build
) > $C_FIFO 2>&1
