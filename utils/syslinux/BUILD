( 

  make installer &&
  prepare_install &&
  make install &&
  mkdir -p /var/lib/syslinux &&
  cp -p core/*.bin /var/lib/syslinux

) > $C_FIFO 2>&1
