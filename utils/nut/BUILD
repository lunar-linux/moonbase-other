(


  OPTS="--with-group=nut --with-user=nut --sysconfdir=/etc/$MODULE" &&

  add_priv_user nut:nut -d /dev/null -s /bin/false &&

  sedit "s:BUS:SUBSYSTEM:" scripts/udev/nut-usbups.rules.in &&

  default_build

) > $C_FIFO 2>&1
