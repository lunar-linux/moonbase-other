(

  OPTS+=" --enable-intel --enable-radeon --enable-udev "  &&

  # Detect VMware VGA virtual 3D card and add driver for it
  VGA=`lspci | grep 'VGA.*VMware.*SVGA.*'` &&
  if [[ $VGA == *VMware* ]];then
     OPTS+=" --enable-vmwgfx-experimental-api "
  fi &&

  default_build

) > $C_FIFO 2>&1
