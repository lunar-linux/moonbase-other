case  $CERTIFICATE  in

  y|Y|j|J)
    rm  -f  /etc/ssl/certs/stunnel.pem          &&
    ./configure  --build=$BUILD                 \
                 --prefix=/usr                  \
                 --sysconfdir=/etc              \
                 --localstatedir=/var           \
                 --mandir=/usr/share/man        \
                 --with-pem-dir=/etc/ssl/certs  \
                 $OPTS                          &&
    make  cert                                  &&
    (  make  all                                &&
       prepare_install                          &&
       make    install
    ) > $C_FIFO 2>&1
  ;;

  *)
    (
      cp  /etc/ssl/certs/stunnel.pem  .            &&
      ./configure  --build=$BUILD                  \
                    --prefix=/usr                  \
                    --sysconfdir=/etc              \
                    --localstatedir=/var           \
                    --mandir=/usr/share/man        \
                    --with-pem-dir=/etc/ssl/certs  \
                    $OPTS                          &&
       make  all                                   &&
       prepare_install                             &&
       make    install
    ) > $C_FIFO 2>&1
  ;;

esac
