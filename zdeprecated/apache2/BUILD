(

  OPTS="--prefix=/etc/httpd                      \
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
        --with-apr-util=/usr                     \
        $OPTS"


  if [ "$USE_WORKER" == "n" ]; then
    OPTS+=" --with-mpm=prefork"
  else
    OPTS+=" --with-mpm=worker"
  fi

  echo "CFLAGS=$CFLAGS"  &&
  echo "OPTS=$OPTS"      &&
  ./configure $OPTS      &&
  default_make           &&

  if [ ! -e /usr/sbin/httpsd ] ; then
    ln -s httpd /usr/sbin/httpsd
  fi

) > $C_FIFO 2>&1
