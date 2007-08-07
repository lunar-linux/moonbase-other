(
  if [ "$KRB4" == "y" ]; then
      OPTS="$OPTS --with-krb4"
  else
      OPTS="$OPTS --without-krb4"
  fi
  
  HEIMDALINC=/usr/include/heimdal

  ./configure --prefix=/usr \
              --libexecdir=/usr/sbin \
              --enable-shared \
              --enable-readline-dir=/usr \
              --enable-openssl=/usr \
              --includedir=/usr/include/heimdal \
              $OPTS &&
  make  &&
  prepare_install &&
  make install &&
  
  # Cleaner symlinks
  ln -sf $HEIMDALINC /usr/include/gssapi &&
  ln -sf $HEIMDALINC/krb5-types.h /usr/include/krb5-types.h &&
  ln -sf $HEIMDALINC/krb5.h /usr/include/krb5.h &&
  ln -sf $HEIMDALINC/asn1_err.h /usr/include/asn1_err.h &&
  ln -sf $HEIMDALINC/krb5_asn1.h /usr/include/krb5_asn1.h &&
  ln -sf $HEIMDALINC/krb5_err.h /usr/include/krb5_err.h &&
  ln -sf $HEIMDALINC/heim_err.h /usr/include/heim_err.h &&
  ln -sf $HEIMDALINC/k524_err.h /usr/include/k524_err.h &&
  ln -sf $HEIMDALINC/krb5-protos.h /usr/include/krb5-protos.h

) > $C_FIFO 2>&1 
