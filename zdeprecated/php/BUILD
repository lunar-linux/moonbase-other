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
    OPTS+=" --with-imap=imap-${IMAP_VERSION}"
  fi
  
  if module_installed apache || module_installed apache-mod_ssl ; then
    OPTS+=" --with-apxs=/usr/sbin/apxs"
  elif module_installed apache2 ; then
    OPTS+=" --with-apxs2=/usr/sbin/apxs"
  fi

  if [ "x${FASTCGI}" != "x" ]; then
    OPTS+=" --enable-fastcgi"
  fi

  if echo $OPTS | grep -q -- --enable-xslt ; then
    LDFLAGS="$LDFLAGS -lstdc++"
  fi

  sedit "s:^:#include <errno.h>\n:" ext/mysql/libmysql/mysys_err.h  &&

  verbose_msg "OPTS=$OPTS" &&
  ./configure  --prefix=/usr                 \
               --sysconfdir=/etc             \
               --with-config-file-path=/etc  \
               --enable-dbase                \
               --enable-dbx                  \
               --enable-dio                  \
               --with-ncurses                \
               $OPTS                        &&
  default_make

) > $C_FIFO 2>&1
