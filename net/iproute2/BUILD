(

  sedit "s:/usr/lib/:lib/:" Makefile
  sedit "s:\$(DESTDIR)\$(CONFDIR):\$(CONFDIR):" Makefile
  sedit "s:\$(DESTDIR)\$(ARPDDIR):\$(ARPDDIR):" Makefile

  sedit 's@linux/socket.h@sys/socket.h@' include/linux/netlink.h
  if ! in_depends $MODULE db; then
    sedit 's/arpd//' misc/Makefile
  fi

  chmod +x configure &&
  ./configure &&
  KERNEL_INCLUDE=/usr/include/ make SBINDIR=/sbin &&
  prepare_install &&
  make SBINDIR=/sbin install

) > $C_FIFO 2>&1