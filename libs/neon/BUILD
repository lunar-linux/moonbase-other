(

  # get the aliases
  SSL=`unalias %SSL`         &&
  XML=`unalias %XMLRENDERER` &&

  # setting the ssl option
  if [[ $SSL == "openssl" ]] && module_installed "openssl" ; then
        OPTS+=" --with-ssl=openssl"
  elif [[ $SSL == "gnutls" ]] && module_installed "gnutls" ; then
        OPTS+=" --with-ssl=gnutls"
  else
        OPTS+=" --without-ssl"
  fi &&

  # setting the xml renderer option (forced without, since
  # unfortunately there is no --with-xml=foo like with ssl
  if [[ $XML == "libxml2" ]] && module_installed "libxml2" ; then
        OPTS+=" --with-libxml2 --without-expat"
  elif [[ $XML == "gnutls" ]] && module_installed "expat" ; then
        OPTS+=" --with-expat --without-libxml2"
  else
        OPTS+=" --without-libxml2 --without-expat"
  fi &&

  OPTS+=" --enable-shared" &&

  default_build

) > $C_FIFO 2>&1
