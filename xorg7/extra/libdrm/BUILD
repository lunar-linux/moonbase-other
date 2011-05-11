(

  OPTS+=" --enable-udev"  &&

  # Detect VMware VGA virtual 3D card and add driver for it
  # (returns exit code 1, if no VMware, so no && at end of line!)
  VGA=`lspci | grep 'VGA.*VMware.*SVGA.*'`
  if [[ $VGA == *VMware* ]] ; then
     OPTS+=" --enable-vmwgfx-experimental-api"
  fi &&

  default_build

) > $C_FIFO 2>&1
