(

  # get the alias
  SSL=`unalias %SSL` &&

  # setting the ssl option
  if [[ $SSL == "openssl" ]] && module_installed "openssl" ; then
        OPTS+=" --with-openssl --without-gnutls"
  elif [[ $SSL == "gnutls" ]] && module_installed "gnutls" ; then
        OPTS+=" --with-gnutls --without-openssl"
  else
        OPTS+=" --without-openssl --without-gnutls"
  fi &&

  default_build

) > $C_FIFO 2>&1
