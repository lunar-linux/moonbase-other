(
   ./configure --prefix=/usr 		\
               --localstatedir=/var  \
               --without-silcd       \
               --sysconfdir=/etc     \
               --with-helpdir=/usr/share/silc-client/help \
               --with-docdir=/usr/share/doc/silc-client \
               --with-simdir=/usr/share/silc-client/modules \
               --with-logsdir=/usr/share/silc-client/logs \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man \
              $OPTS &&
   default_make
) > $C_FIFO 2>&1

