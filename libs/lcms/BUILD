(

  make                &&
  make  tifficc       &&
  prepare_install     &&
  make  utils         &&
  make  install       &&
  mkdir -p /usr/share/lcms       &&
  cp -R samples /usr/share/lcms  &&
  cp tifficc/tifficc /usr/bin

) > $C_FIFO 2>&1
