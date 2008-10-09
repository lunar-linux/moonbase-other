(

  if [ "$USE_REGGLOBALS" == "y" ]; then
    OPTS="$OPTS "
  fi

  if module_installed apache || module_installed apache-mod_ssl ; then
    OPTS="$OPTS --with-apxs=/usr/sbin/apxs"
  elif module_installed apache2 ; then
    OPTS="$OPTS --with-apxs2=/usr/sbin/apxs"
  fi

  if [ -s /etc/httpsd/httpd.conf ] ; then
    cp /etc/httpsd/httpd.conf /etc/httpsd/httpd.conf.`date +%Y%m%d`
  fi

  if [ -s /etc/httpd/httpd.conf ] ; then
    cp /etc/httpd/httpd.conf /etc/httpd/httpd.conf.`date +%Y%m%d`
  fi

  # sedit "s:^:#include <errno.h>\n:" ext/mysql/libmysql/mysys_err.h &&

  verbose_msg "OPTS=$OPTS" &&

  ./configure  --prefix=/usr                 \
               --sysconfdir=/etc             \
               --with-config-file-path=/etc  \
               --enable-dbase                \
               --enable-dbx                  \
               --enable-dio                  \
               --with-readline               \
               --with-zlib=/usr              \
               --enable-force-cgi-redirect   \
               --enable-discard-path         \
               $OPTS                        &&

  default_make

) > $C_FIFO 2>&1
