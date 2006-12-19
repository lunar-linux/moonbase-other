(

  if [ "$USE_PATCH" == "y" ]; then
    patch_it $SOURCE4 1
  fi &&

  ./buildconf --force &&

  if [ "$USE_IMAP" == "y" ]; then
    unpack $SOURCE2
    make -C imap-${IMAP_VERSION} slx SPECIALS="SSLDIR=/etc/ssl SSLINCLUDE=/usr/include SSLLIB=/usr/lib"
    OPTS="$OPTS --with-imap=imap-${IMAP_VERSION}"
  fi &&

  if [ "$USE_REGGLOBALS" == "y" ]; then
    OPTS="$OPTS "
  fi &&

  if [ "$USE_FTP" == "y" ]; then
    OPTS="$OPTS --enable-ftp"
  fi &&

  if [ "$USE_SESSIONID" == "y" ]; then
    OPTS="$OPTS --enable-trans-sid"
  fi &&

  if [ "$USE_SQLITE" == "y" ]; then
    OPTS="$OPTS --enable-sqlite-utf8"
  fi &&

  if [ "$USE_SOCKETS" == "y" ]; then
    OPTS="$OPTS --enable-sockets"
  fi &&

  if [ "$USE_NCURSES" == "y" ]; then
    OPTS="$OPTS --with-ncurses"
  fi &&

  if [ "$USE_FASTCGI" == "y" ]; then
    OPTS="$OPTS --enable-fastcgi"
  fi &&

  if [ "$USE_MBYTESTR" == "y" ]; then
    OPTS="$OPTS --enable-mbstring"
  fi &&

  if [ "$USE_MBYTEREGEX" == "n" ]; then
    OPTS="$OPTS --disable-mbregex"
  fi &&

  if module_installed apache || module_installed apache-mod_ssl ; then
    OPTS="$OPTS --with-apxs=/usr/sbin/apxs"
  elif module_installed apache2 ; then
    OPTS="$OPTS --with-apxs2=/usr/sbin/apxs"
  fi &&

  if [ -s /etc/httpsd/httpd.conf ] ; then
    cp /etc/httpsd/httpd.conf /etc/httpsd/httpd.conf.`date +%Y%m%d`
  fi &&

  if [ -s /etc/httpd/httpd.conf ] ; then
    cp /etc/httpd/httpd.conf /etc/httpd/httpd.conf.`date +%Y%m%d`
  fi &&

  # sedit "s:^:#include <errno.h>\n:" ext/mysql/libmysql/mysys_err.h &&

  verbose_msg "OPTS=$OPTS" &&
  ./configure  --prefix=/usr                 \
               --sysconfdir=/etc             \
               --with-config-file-path=/etc  \
               --enable-suhosin              \
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
