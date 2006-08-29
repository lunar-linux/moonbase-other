(

  prepare_install  &&

  OPTS="$OPTS  --prefix=/etc/httpd                      \
               --sysconfdir=/etc/httpd/conf             \
               --exec-prefix=/usr                       \
               --sbindir=/usr/sbin                      \
               --libexecdir=/usr/libexec/httpd/modules  \
               --datadir=/var/www                       \
               --sharedstatedir=/var/run/httpd          \
               --localstatedir=/var                     \
               --libdir=/usr/lib                        \
               --includedir=/usr/include/httpd          \
               --infodir=/usr/share/info                \
               --mandir=/usr/share/man                  \
               --enable-so                              \
               --enable-rewrite                         \
               --enable-mime-magic                      \
               --enable-exception-hook                  \
               --enable-layout=GNU                      \
               --enable-usertrack                       \
               --with-apr=/usr                          \
               --with-apr-util=/usr"

  if [ "$ENABLE_SUEXEC" == "y" ] ; then
    OPTS="$OPTS --enable-suexec --with-suexec               \
               --with-suexec-caller=nobody                  \
               --with-suexec-docroot=/var/www               \
               --with-suexec-logfile=/var/log/httpd/suexec  \
               --with-suexec-bin=/usr/sbin/suexec           \
               --with-suexec-uidmin=500                     \
               --with-suexec-gidmin=500"
  fi

  if [ "$ENABLE_SSL" == "y" ] ; then
    OPTS="$OPTS --enable-ssl"
  fi

  if [ "$ENABLE_PROXY" == "y" ] ; then
    OPTS="$OPTS --enable-proxy --enable-proxy-connect  \
                --enable-proxy-http --enable-proxy-ftp"
  fi

  if [ "$ENABLE_DAV" == "y" ] ; then
    OPTS="$OPTS --enable-dav --enable-dav-fs --enable-dav-lock"
  fi

  if [ "$ENABLE_INFO" == "y" ] ; then
    OPTS="$OPTS --enable-info"
  fi

  if [ "$ENABLE_DEFLATE" == "y" ] ; then
    OPTS="$OPTS --enable-deflate"
  fi

  if [ "$ENABLE_CGID" == "y" ] ; then
    OPTS="$OPTS --enable-cgid"
  else
    OPTS="$OPTS --enable-cgi"
  fi

  if [ "$ENABLE_VHOST" == "y" ] ; then
    OPTS="$OPTS --enable-vhost-alias"
  fi

  if [ "$ENABLE_SPELL" == "y" ] ; then
    OPTS="$OPTS --enable-spelling"
  fi

  if [ "$USE_WORKER" == "n" ]; then
    OPTS="$OPTS --with-mpm=prefork"
  else
    OPTS="$OPTS --with-mpm=worker"
  fi

  echo "CFLAGS=$CFLAGS"     &&
  echo "OPTS=`echo $OPTS`"  &&
  ./configure $OPTS         &&
  default_make              &&

  if [ ! -e /usr/sbin/httpsd ] ; then
    ln -s httpd /usr/sbin/httpsd
  fi

) > $C_FIFO 2>&1
