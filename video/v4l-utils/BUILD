(

  if in_depends $MODULE systemd ; then
    OPTS+=" --with-udevdir=/usr/lib/udev"
  fi &&

  default_build

) > $C_FIFO 2>&1
