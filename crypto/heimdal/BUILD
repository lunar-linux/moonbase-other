(

  OPTS+=" --prefix=/usr \
          --libexecdir=/usr/sbin \
          --enable-shared \
          --enable-readline-dir=/usr \
          --enable-openssl=/usr \
          --includedir=/usr/include/heimdal" &&

  if [ "$KRB4" == "y" ]; then
    OPTS+=" --with-krb4"
  else
    OPTS+=" --without-krb4"
  fi &&

  HEIMDALINC=/usr/include/heimdal &&

  patch_it $SOURCE2 1 &&
  patch_it $SOURCE3 1 &&
  patch_it $SOURCE4 1 &&

  sh autogen.sh &&

  default_build &&

  # Cleaner symlinks
  ln -sf $HEIMDALINC/gssapi /usr/include/gssapi &&
  ln -sf $HEIMDALINC/krb5-types.h /usr/include/krb5-types.h &&
  ln -sf $HEIMDALINC/krb5.h /usr/include/krb5.h &&
  ln -sf $HEIMDALINC/asn1_err.h /usr/include/asn1_err.h &&
  ln -sf $HEIMDALINC/krb5_asn1.h /usr/include/krb5_asn1.h &&
  ln -sf $HEIMDALINC/krb5_err.h /usr/include/krb5_err.h &&
  ln -sf $HEIMDALINC/heim_err.h /usr/include/heim_err.h &&
  ln -sf $HEIMDALINC/k524_err.h /usr/include/k524_err.h &&
  ln -sf $HEIMDALINC/krb5-protos.h /usr/include/krb5-protos.h

) > $C_FIFO 2>&1
