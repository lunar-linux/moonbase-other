(

  if [ -s /etc/httpsd/httpd.conf ] ; then
    cp /etc/httpsd/httpd.conf /etc/httpsd/httpd.conf.`date +%Y%m%d`
  fi

  if [ -s /etc/httpd/httpd.conf ] ; then
    cp /etc/httpd/httpd.conf /etc/httpd/httpd.conf.`date +%Y%m%d`
  fi

  if [ "$IMAP" == "y" ]; then
    unpack $SOURCE2
    make -C imap-${IMAP_VERSION} slx SPECIALS="SSLDIR=/etc/ssl SSLINCLUDE=/usr/include SSLLIB=/usr/lib"
    OPTS="$OPTS --with-imap=imap-${IMAP_VERSION}"
  fi

  sedit "s:^:#include <errno.h>\n:" ext/mysql/libmysql/mysys_err.h	&&

  verbose_msg "OPTS=$OPTS" &&
  ./configure  --prefix=/usr                 \
               --sysconfdir=/etc             \
               --with-config-file-path=/etc  \
	       --enable-dbase		     \
	       --enable-dbx		     \
	       --enable-dio		     \
               $OPTS                         && 
  make                                       &&
  prepare_install                            &&
  make    install 

) > $C_FIFO 2>&1
