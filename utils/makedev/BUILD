(
  cat /proc/mounts | grep devfs | grep -qw /dev && {
      echo
      echo "/dev seems to be devfs, do not install this module!!"
      echo
      exit 1
  }
  make                                                   &&
  prepare_install                                        &&
  make install

) > $C_FIFO 2>&1
