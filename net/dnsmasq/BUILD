(

  sedit "s:/usr/local:/usr:" Makefile  &&

  default_make

  if [ -f /etc/rc.d/init.d/dnsmasq ] ; then
    rm -f /etc/rc.d/init.d/dnsmasq
  fi

  if [ ! -f /etc/dnsmasq.conf ] ; then
    cp $SOURCE_DIRECTORY/dnsmasq.conf.example /etc/dnsmasq.conf
  fi

) > $C_FIFO 2>&1
