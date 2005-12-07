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
	       --enable-modules=most                    \
               --enable-so                              \
               --enable-info                            \
               --enable-cgi                             \
               --enable-rewrite                         \
               --enable-speling                         \
               --enable-usertrack                       \
               --enable-deflate                         \
               --enable-mime-magic                      \
               --enable-exception-hook                  \
               --enable-layout=GNU                      \
	       --with-mpm=prefork"
  #            --with-mpm=worker

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

  echo "CFLAGS=$CFLAGS"     &&
  echo "OPTS=`echo $OPTS`"  &&
  ./configure $OPTS         &&
  default_make              &&

  if [ ! -e /usr/sbin/httpsd ] ; then
    ln -s httpd /usr/sbin/httpsd
  fi

) > $C_FIFO 2>&1
