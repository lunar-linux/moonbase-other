(


  make  &&
  prepare_install  &&
  install -c clockdiff             /sbin  &&
  install -c arping                /sbin  &&
  install -c ping         -m 4711  /bin   &&
  install -c ping6        -m 4711  /bin   &&
  install -c rdisc                 /sbin  &&
  install -c tracepath             /bin   &&
  install -c tracepath6            /bin   &&
  install -c traceroute6           /bin   &&

  if module_installed docbook-utils ; then

    make man  &&

    #install the docs
    install -c doc/clockdiff.8 /usr/share/man/man8  &&
    install -c doc/arping.8    /usr/share/man/man8  &&
    install -c doc/pg3.8       /usr/share/man/man8  &&
    install -c doc/ping.8      /usr/share/man/man8  &&
    install -c doc/rdisc.8     /usr/share/man/man8  &&
    install -c doc/rarpd.8     /usr/share/man/man8  &&
    install -c doc/tftpd.8     /usr/share/man/man8  &&
    install -c doc/tracepath.8 /usr/share/man/man8  &&
    install -c doc/traceroute6.8 /usr/share/man/man8

  fi

) > $C_FIFO 2>&1
