(

  OPTS+=" --disable-more-warnings"
  sedit 's|GNUTLS_CERT_NOT_TRUSTED|GNUTLS_CERT_INVALID|g' libsoup/soup-gnutls.c  &&
  default_build

) > $C_FIFO 2>&1
