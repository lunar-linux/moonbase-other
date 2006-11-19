(

  OPTS="$OPTS --with-ssl=openssl"

  add_priv_user dovecot:dovecot

  if [ "$DISABLE_POP3" == "y" ]; then
    OPTS="$OPTS --without-pop3d"
  fi

  default_build

) > $C_FIFO 2>&1
