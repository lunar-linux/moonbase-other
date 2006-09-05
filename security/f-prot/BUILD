(

  prepare_install &&
  install -p -m 644 man_pages/f-prot.1 /usr/share/man/man1/ &&
  install -p -m 644 man_pages/f-prot.conf.5 /usr/share/man/man5/ &&
  install -p -m 644 man_pages/check-updates.pl.8 /usr/share/man/man8/ && 
  install -d /opt/lunar/f-prot/tools/ &&
  install -p -m 755 tools/check-updates.pl /opt/lunar/f-prot/tools/ &&
  install -p -m 755 *.DEF ENGLISH.TX0 f-prot f-prot.sh /opt/lunar/f-prot/ &&
  ln -sf /opt/lunar/f-prot/f-prot.sh /usr/bin/f-prot &&
  gather_docs LICENSE* CHANGES doc_ws etc/f-prot.conf.default && 
  if ! [ -e /opt/lunar/f-prot.conf ]; then
      cp -p etc/f-prot.conf.default /opt/lunar/f-prot/
  fi &&
  ln -sf /opt/lunar/f-prot/f-prot.conf.default /etc/f-prot.conf

) > $C_FIFO 2>&1 
