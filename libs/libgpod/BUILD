(

  if module_installed systemd ; then
     OPTS+=" --with-udev-dir=/usr/lib/udev/rules.d"
  fi &&

  default_build

) > $C_FIFO 2>&1

