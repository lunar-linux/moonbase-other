(

  OPTS+=" --prefix=/usr \
          --libexecdir=/usr/sbin \
          --datadir=/var/lib/heimdal \
          --localstatedir=/var/lib/heimdal \
          --sysconfdir=/etc \
          --enable-shared \
          --enable-readline-dir=/usr \
          --enable-openssl=/usr" &&

  # Migration code, remove symlinks
  REMOVE_KRB="gssapi krb5-types.h krb5.h asn1_err.h krb5_asn1.h \
              krb5_err.h heim_err.h k524_err.h krb5-protos.h" &&

  for i in $REMOVE_KRB; do
    rm -f /usr/include/${i}
  done &&

  if [ -d /usr/include/heimdal ]; then
    rm -rf /usr/include/heimdal
  else
    rm -f /usr/include/heimdal
  fi &&

  # DB location changed to a sane place
  if [ -d /var/heimdal ] && [ ! -d /var/lib/heimdal ]; then
    mv -f /var/heimdal /var/lib/heimdal
  fi &&

  # Change default datadir (hardcoded)
  sedit "s;var/heimdal;var/lib/heimdal;g" configure.in configure \
        doc/setup.texi doc/heimdal.info kadmin/kadmind.8 kdc/kdc.8 \
        lib/hdb/hdb.h lib/krb5/krb5.conf.5 lib/krb5/krb5.conf.cat5 &&

  sh autogen.sh &&

  default_build

) > $C_FIFO 2>&1
