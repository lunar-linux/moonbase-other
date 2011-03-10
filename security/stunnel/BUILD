sedit "s:MAKE) stunnel.pem:MAKE) install-data:"  Makefile.in  &&

case  $CERTIFICATE  in

  y|Y)
    rm  -f  /etc/ssl/certs/stunnel.pem   &&
    ./configure  --build=$BUILD           \
                 --prefix=/usr            \
                 --sysconfdir=/etc        \
                 --localstatedir=/var     \
                 --mandir=/usr/share/man  \
                 $OPTS                   &&
    make  cert                           &&
    (  default_make
    ) > $C_FIFO 2>&1
  ;;

  *)
    (
      cp  /etc/ssl/certs/stunnel.pem  .     &&
      ./configure  --build=$BUILD            \
                    --prefix=/usr            \
                    --sysconfdir=/etc        \
                    --localstatedir=/var     \
                    --mandir=/usr/share/man  \
                    $OPTS                   &&
       default_make
    ) > $C_FIFO 2>&1
  ;;

esac
