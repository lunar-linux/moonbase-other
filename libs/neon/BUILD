(

  if module_installed openssl ; then
        OPTS+=" --with-ssl=openssl"
  else
        OPTS+=" --with-ssl=gnutls"
  fi &&

  OPTS+=" --enable-shared"
  default_build

) > $C_FIFO 2>&1
