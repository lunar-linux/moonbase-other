(

  prepare_install &&
  install -m0755 tw_cli tw_sched /usr/sbin/ &&
  install -m0644 tw_cli.8.nroff /usr/share/man/man8/tw_cli.8 &&
  install -m0644 tw_sched.8.nroff /usr/share/man/man8/tw_sched.8 &&
  if [ ! -e /etc/tw_sched.cfg ] ; then
    install -m0644 tw_sched.cfg /etc/
  fi

) > $C_FIFO 2>&1
