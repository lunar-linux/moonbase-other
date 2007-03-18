(

  OPTS="$OPTS --enable-wacom --enable-wacomdrv"

  if in_depends linuxwacom XOrg7; then
    OPTS="$OPTS --with-dlloader=yes"
  fi

  default_build &&

  install -m 644 $SCRIPT_DIRECTORY/10-wacom.rules /etc/udev/rules.d/ 

) > $C_FIFO 2>&1
