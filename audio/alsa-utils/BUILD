(

  if module_installed systemd; then
    UDEV_DIR=/usr/lib/udev/rules.d
    OPTS+=" --with-udev-rules-dir=$UDEV_DIR"
  else
    UDEV_DIR=/lib/udev/rules.d
  fi 

  sedit  "s:@sbindir@:/usr/sbin:"  alsactl/90-alsa-restore.rules.in  &&

  default_build &&

  install -m0644 $SCRIPT_DIRECTORY/40-alsa-mixer.rules ${UDEV_DIR}/

) > $C_FIFO 2>&1
