(

  if module_installed openssl; then
    OPTS="$OPTS --with-ssl=openssl"
   else
    OPTS="$OPTS --with-ssl=gnutls"
  fi &&

  OPTS="$OPTS --with-asyncns=yes"

  default_build

) > $C_FIFO 2>&1

