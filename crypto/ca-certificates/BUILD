(

  make             &&
  prepare_install  &&
  install -d -m755 /{etc/ca-certificates/updates.d,usr/{sbin,share/ca-certificates},etc/ssl/certs}      &&
  install -D -m644 sbin/update-ca-certificates.8 /usr/share/man/man8/update-ca-certificates.8  &&
  make install     &&

  (
    cd /usr/share/ca-certificates
    find . -name '*.crt' | sort | cut -b3-
  ) > /etc/ca-certificates.conf

) > $C_FIFO 2>&1
