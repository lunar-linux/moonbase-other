(

  make MANDIR=/usr/share/man            &&
  prepare_install                       &&
  make MANDIR=/usr/share/man   install  &&

  if  !  [  -e  /etc/syslog.conf  ];  then
    sedit  "s/usr/var/"  syslog.conf &&
    sedit  "s/adm/log/"  syslog.conf &&
    cp                   syslog.conf  /etc
  fi &&

  if [ -e "/etc/init.d/sysklogd.sh" ]; then
    /etc/init.d/sysklogd.sh stop
    rm -f /etc/rc?.d/???sysklogd.sh
    rm -f /etc/init.d/sysklogd.sh
  fi

) > $C_FIFO 2>&1 

