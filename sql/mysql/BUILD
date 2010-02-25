(

  message " "
  message " ${PROBLEM_COLOR}Warning! ${DEFAULT_COLOR}Database backup have to be done to avoid any data loss during migration."
  message " "
  query INSTALL "Have you done data backup (y/n)? " n

  if ! [ "$INSTALL" == "y" ] ; then
     message " "
     message " ${DEFAULT_COLOR}Please consult first http://dev.mysql.com/doc/refman/5.1/en/upgrade.html before installing."
     sleep 5
     exit 1
  fi

  add_priv_user mysql:mysql  &&
  devoke_installwatch        &&

  if [ "`arch`" == "alpha" ]; then
      export CFLAGS="$CFLAGS -fPIC"
      export CXXFLAGS="$CXXFLAGS -fPIC"
  fi  &&

  if [ "`arch`" == "x86_64" ]; then
      export CFLAGS="$CFLAGS -fPIC"
      export CXXFLAGS="$CXXFLAGS -fPIC"
  fi  &&

  export CXX='gcc'  &&

  ./configure  --prefix=/usr                   \
               --disable-dependency-tracking   \
               --without-bench                 \
               --without-debug                 \
               --without-readline              \
               --without-libedit               \
               --enable-thread-safe-client     \
               --enable-assembler              \
               --localstatedir=/var/lib/mysql  \
               --infodir=/usr/share/info       \
               --mandir=/usr/share/man         \
               --with-pthread                  \
               $OPTS                          &&
  invoke_installwatch                         &&

  make  pkglibdir=/usr/lib                    ||
  {
    MYSQL_EXIT=$?
    message ""
    message "Compilation of mysql failed."
    message ""
    message "If you are getting error about 'read_cr4/write_cr4' and/or 'set_in_cr4'"
    message "note that this is not a mysql bug."
    message ""
    message "To fix this please edit the include file that reports the errors and"
    message "encapsulate the 'set_in_cr4' function with '#ifdef __KERNEL__'/'#endif'."
    message ""
    exit $MYSQL_EXIT;
  }
  prepare_install                    &&
  mkdir -p /var/lib/mysql            &&
  make  pkglibdir=/usr/lib  install  &&
  rm    -rf  /usr/mysql-test         &&

  if  [ -x /etc/init.d/mysql.server ]; then
    rm -f /etc/init.d/mysql.server
    rm -f /etc/rc?.d/???mysql.server
  fi

) > $C_FIFO 2>&1
