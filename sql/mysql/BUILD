(

  add_priv_user mysql:mysql

  devoke_installwatch                                     &&

  set -x
  ./configure  --prefix=/usr                              \
               --disable-dependency-tracking              \
               --without-bench                            \
               --without-debug                            \
	       --enable-thread-safe-client                \
               --enable-assembler                         \
               --localstatedir=/var/lib/mysql             \
               --infodir=/usr/share/info                  \
               --mandir=/usr/share/man                    \
               --with-extra-charset=all                   \
	       --with-pthread                             \
               $OPTS                                      &&
  set +x &&             
  invoke_installwatch                                     &&
  make  pkglibdir=/usr/lib                                &&
  prepare_install                                         &&
  make  pkglibdir=/usr/lib  install                       &&
  rm    -rf  /usr/mysql-test                              &&
  if ! grep  -q  "\--without-server" $MODULE_CONFIG;  then
    mysql_install_db
    chown  -R  mysql.mysql  /var/lib/mysql
  fi                                                      &&

  if  [ -x /etc/init.d/mysql.server  ]; then
    rm -f /etc/init.d/mysql.server
    rm -f /etc/rc?.d/???mysql.server
  fi

) > $C_FIFO 2>&1
