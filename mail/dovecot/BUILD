(

  OPTS+=" --with-ssl=openssl"

  add_priv_user dovecot:dovecot &&

  if [ "$DISABLE_POP3" == "y" ]; then
    OPTS+=" --without-pop3d"
  fi &&

  default_build &&

  gather_docs doc/mkcert.sh doc/dovecot-openssl.cnf

) > $C_FIFO 2>&1
