(

  make clockdiff arping ping ifenslave ping6 rdisc tracepath tracepath6 traceroute6  &&
  make -C doc man                                   &&
  prepare_install                                   &&

  install -c clockdiff             /sbin            &&
  install -c arping                /sbin            &&
  install -c ping         -m 4711  /bin             &&
  install -c ifenslave             /sbin            &&
  install -c ping6        -m 4711  /bin             &&
  install -c rdisc                 /sbin            &&
  install -c tracepath             /bin             &&
  install -c tracepath6            /bin             &&
  install -c traceroute6           /bin             &&

  #install the docs
  install -c doc/clockdiff.8 /usr/share/man/man8    &&
  install -c doc/arping.8    /usr/share/man/man8    &&
  install -c doc/pg3.8       /usr/share/man/man8    &&
  install -c doc/ping.8      /usr/share/man/man8    &&
  install -c doc/rdisc.8     /usr/share/man/man8    &&
  install -c doc/rarpd.8     /usr/share/man/man8    &&
  install -c doc/tftpd.8     /usr/share/man/man8    &&
  install -c doc/tracepath.8 /usr/share/man/man8    &&
  install -c doc/traceroute6.8 /usr/share/man/man8  &&
  mkdir -p /usr/share/doc/iputils                   &&
  install -c README.bonding  /usr/share/doc/iputils       

) > $C_FIFO 2>&1
