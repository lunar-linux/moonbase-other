(

  cd  src
  ./configure  --enable-dns-for-kdc     \
               --enable-dns-for-realm   \
               --infodir=/usr/share     \
               --mandir=/usr/share/man  \
               --prefix=/usr    &&
  make                          &&
  prepare_install               &&
  make    install
echo
) > $C_FIFO 2>&1  &&  (

  [  -f  /etc/krb5.conf  ]  ||  cp  src/config-files/krb5.conf  /etc

)
