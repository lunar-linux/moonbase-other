(

  if module_installed openssl ; then
    OPTS="NOSSL=unix SSLCERTS=/etc/ssl/certs SSLINCLUDE=/usr/include/openssl SSLLIB=/usr/lib"
  fi
  
  if module_installed Linux-PAM ; then
    TARGET="lnp"
  else
    TARGET="slx"
  fi

  ./build $TARGET DEBUG="$CFLAGS" $OPTS &&
  prepare_install $$

  for FILE in bin/rpload bin/rpdump ; do
    install -m0755 $FILE /usr/sbin
  done &&

  for FILE in bin/mtest bin/pico bin/pilot bin/pine ; do
    install -m0755 $FILE /usr/bin
  done &&

  #  cp  imapd   /usr/sbin
  #  cp  ipop2d  /usr/sbin
  #  cp  ipop3d  /usr/sbin
  
  for MANPAGE in doc/*.1 ;  do
    gzip -9 $MANPAGE &&
    install -m0644 $MANPAGE.gz /usr/share/man/man1
  done

  #  if  module_installed  stunnel;  then
  #    ln  -sf  stunnel.pem  /etc/ssl/certs/imapd.pem
  #    ln  -sf  stunnel.pem  /etc/ssl/certs/ipop3d.pem
  #  fi

) > $C_FIFO 2>&1
