(
  cat /proc/mounts | grep devfs | grep -qw /dev && {
      echo
      echo "/dev seems to be devfs, do not install this module!!"
      echo
      exit 1
  }
  prepare_install                                        &&
  cp -f $SCRIPT_DIRECTORY/$MODULE-$VERSION /dev/MAKEDEV  &&
  chmod 754 /dev/MAKEDEV

) > $C_FIFO 2>&1
