(

  add_priv_user vcsa:vcsa
  cat /proc/mounts | grep devfs | grep -qw /dev && {
      echo
      echo "/dev seems to be devfs, do not install this module!!"
      echo
      exit 1
  }
  make                                                   &&
  prepare_install                                        &&
  install -d -m 755 /dev/pts                             &&
  install -d -m 755 /dev/shm                             &&
  make install

) > $C_FIFO 2>&1
