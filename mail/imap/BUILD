( 
  if module_installed Linux-PAM ; then
    echo "y" | make lnp SPECIALS="SSLDIR=/etc/ssl SSLINCLUDE=/usr/include SSLLIB=/usr/lib" SSLTYPE=unix

  else
    echo "y" | make slx SPECIALS="SSLDIR=/etc/ssl SSLINCLUDE=/usr/include SSLLIB=/usr/lib" SSLTYPE=unix
  fi &&
  
  prepare_install                                         &&
  install -m755 imapd/imapd /usr/sbin/imapd               &&
  install -m755 ipopd/ipop3d /usr/sbin/ipop3d             &&
    
  # install the man pages
  mv src/ipopd/ipopd.8c src/ipopd/ipopd.8                 &&
  mv src/imapd/imapd.8c src/imapd/imapd.8                 &&
  gzip -9 src/ipopd/ipopd.8 src/imapd/imapd.8             &&
  install -m644 src/ipopd/ipopd.8.gz /usr/share/man/man8  &&
  install -m644 src/imapd/imapd.8.gz /usr/share/man/man8  

) > $C_FIFO 2>&1
