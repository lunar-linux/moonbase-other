case  $CERTIFICATE  in

  y|Y)
    rm  -f  /etc/ssl/certs/stunnel.pem         &&
    ./configure  --build=$BUILD                 \
                 --prefix=/usr                  \
                 --sysconfdir=/etc              \
                 --localstatedir=/var           \
                 --mandir=/usr/share/man        \
                 --with-pem-dir=/etc/ssl/certs  \
                 $OPTS                         &&
    make  cert                                 &&
    (  default_make
    ) > $C_FIFO 2>&1
  ;;

  *)
    (
      cp  /etc/ssl/certs/stunnel.pem  .            &&
      ./configure  --build=$BUILD                   \
                    --prefix=/usr                   \
                    --sysconfdir=/etc               \
                    --localstatedir=/var            \
                    --mandir=/usr/share/man         \
                    --with-pem-dir=/etc/ssl/certs   \
                    $OPTS                          &&
       default_make
    ) > $C_FIFO 2>&1
  ;;

esac
