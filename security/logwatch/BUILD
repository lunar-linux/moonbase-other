(

  prepare_install &&
  mkdir -p /etc/log.d/ &&
  mkdir -p /usr/share/man/man8 &&
  cp -av conf lib scripts /etc/log.d/ &&
  install logwatch.8 /usr/share/man/man8/ &&
  mv conf conf-nodocinstall

) > $C_FIFO 2>&1
