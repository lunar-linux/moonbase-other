(

  if  module_installed  openssl;  then

    if    module_installed  Linux-PAM
    then  ./build  DEBUG="$CFLAGS"  NOSSL=unix  SSLCERTS=/etc/ssl/certs  SSLINCLUDE=/usr/include/openssl  SSLLIB=/usr/lib  lnp
    else  ./build  DEBUG="$CFLAGS"  NOSSL=unix  SSLCERTS=/etc/ssl/certs  SSLINCLUDE=/usr/include/openssl  SSLLIB=/usr/lib  slx
    fi  &&
    prepare_install

  else

    if    module_installed  Linux-PAM
    then  ./build  DEBUG="$CFLAGS"  lnp
    else  ./build  DEBUG="$CFLAGS"  slx
    fi  &&
    prepare_install

  fi


) > $C_FIFO 2>&1  &&  (

  cd  bin
#  cp  imapd   /usr/sbin
#  cp  ipop2d  /usr/sbin
#  cp  ipop3d  /usr/sbin
  cp  rpload  /usr/sbin
  cp  rpdump  /usr/sbin
  cp  mtest   /usr/bin
  cp  pico    /usr/bin
  cp  pilot   /usr/bin
  cp  pine    /usr/bin
  cd  ../doc

  for  MANPAGE  in  `ls  *.1`;  do
    gzip  -9  $MANPAGE
    cp  $MANPAGE.gz  /usr/share/man/man1
  done

#  if  module_installed  stunnel;  then
#    ln  -sf  stunnel.pem  /etc/ssl/certs/imapd.pem
#    ln  -sf  stunnel.pem  /etc/ssl/certs/ipop3d.pem
#  fi

)
