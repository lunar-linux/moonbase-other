(

  patch_it $SOURCE2 1 &&
  prepare_install &&
  mkdir -p /etc/log.d /usr/share/man/man8 &&
  cp -av conf lib scripts /etc/log.d/ &&
  chmod 755 lib/* scripts/logwatch.pl scripts/*/* &&
  install logwatch.8 /usr/share/man/man8/ &&
  if [ ! -e /etc/log.d/logwatch.conf ] ; then
    install conf/logwatch.conf -m644 /etc/log.d/
  fi &&
  mv conf conf-nodocinstall

) > $C_FIFO 2>&1
