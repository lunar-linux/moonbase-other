(

  OPTS="$OPTS --enable-wacom --enable-wacomdrv"

  if in_depends linuxwacom XOrg7; then
    OPTS="$OPTS --with-dlloader=yes"
  fi

  default_build

) > $C_FIFO 2>&1
