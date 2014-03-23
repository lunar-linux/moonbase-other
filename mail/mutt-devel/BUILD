(
   OPTS+=" --enable-pop   \
            --enable-imap \
            --disable-nls \
            --with-mailpath=/var/spool/mail  \
            --with-docdir=/usr/share/doc/$MODULE" &&

   default_build  &&
   gather_docs doc/Muttrc
) > $C_FIFO 2>&1
