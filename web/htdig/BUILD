(

  CFLAGS="$CFLAGS -Wno-deprecated"
  CCFLAGS="$CCFLAGS -Wno-deprecated"
  cat $SCRIPT_DIRECTORY/htdig-gcc3.2-config.patch | patch -p0
  if module_installed apache-mod_ssl; then
    HTDIGDIR=/usr/share/httpsd/htdig
    CGIBINDIR=/usr/share/httpd/cgi-bin
  elif module_installed apache2 ; then
    HTDIGDIR=/var/www/htdig
    CGIBINDIR=/var/www/cgi-bin
  else
    HTDIGDIR=/usr/share/httpd/htdig
    CGIBINDIR=/usr/share/httpd/cgi-bin
  fi

  SEARCHFORM=search.html
  WEBPREFIX=/htdig

  echo "OPTS=$OPTS"
  echo "CFLAGS=$CFLAGS"

  ./configure  --prefix=/usr                      \
               --sysconfdir=/etc                  \
               --with-config-dir=$HTDIGDIR/conf   \
               --with-common-dir=$HTDIGDIR/common \
               --with-database-dir=$HTDIGDIR/db   \
               --with-default-config-file=$HTDIGDIR/conf/htdig.conf \
               --with-cgi-bin-dir=$CGIBINDIR      \
               --with-image-dir=$HTDIGDIR         \
               --with-search-dir=$HTDIGDIR        \
               --with-image-url-prefix=$WEBPREFIX \
               --with-search-form=$SEARCHFORM     \
               $OPTS              &&
  make                            &&
  prepare_install                 &&
  make    install                 &&
  cp ${CGIBINDIR}/htsearch /usr/bin  

) > $C_FIFO 2>&1
