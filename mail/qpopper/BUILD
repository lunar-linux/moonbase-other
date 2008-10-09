(

  if module_installed Linux-PAM; then
    OPTS="$OPTS --with-pam"
  else
    OPTS="$OPTS --without-pam"
  fi

  if in_depends $MODULE openssl ; then
    CFLAGS="$CFLAGS -I/usr/include/openssl"
  fi
  
  message "${MESSAGE_COLOR}Configuring with $OPTS${DEFAULT_COLOR}"


  sedit "s:-md:-m:" Makefile.in  &&
  

  ./configure --prefix=/usr \
              --mandir=/usr/share/man \
              --enable-standalone \
              $OPTS &&
  default_make

) > $C_FIFO 2>&1
