(

  scons prefix=/usr &&
  prepare_install   &&
  scons install     &&

  if in_depends $MODULE udev; then
    scons udev-install
  fi 

) > $C_FIFO 2>&1
