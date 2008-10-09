(

  prepare_install &&
  install -m755 bin/resolvconf bin/list-records /bin/ &&
  cp -rv etc/resolvconf /etc/ &&
  install -m644 man/resolvconf.8 /usr/share/man/man8/ &&
  install -m644 man/interface-order.5 /usr/share/man/man5/

) > $C_FIFO 2>&1
