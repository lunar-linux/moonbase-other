(

  if  module_installed  Linux-PAM;  then
    OPTS="$OPTS --with-pam"
  fi

  if grep -q "qpopper" $MODULE_CONFIG; then
    OPTS="$OPTS --enable-standalone"
  fi

  if  module_installed openssl && grep -q "OPENSSL=y" $MODULE_CONFIG ; then
    CFLAGS="$CFLAGS -I/usr/include/openssl"
  fi
  
  echo "Configuring with $OPTS"

  ./configure $OPTS --prefix=/usr --mandir=/usr/share/man &&
  make &&
  prepare_install &&
  make install

) > $C_FIFO 2>&1
