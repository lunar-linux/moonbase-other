(

  OPTS+=" --enable-udev --enable-libkms --disable-radeon --disable-intel"  &&

  # Detect VMware VGA virtual 3D card and add driver for it
  # (returns exit code 1, if no VGA, so no && at end of line!)
  VGA=`lspci | grep 'VGA'`
  if [[ $VGA == *VMware* ]] ; then
     OPTS+=" --enable-vmwgfx-experimental-api"
  fi &&
  if [[ $VGA == *nVidia* ]] ; then
     OPTS+=" --enable-nouveau-experimental-api"
  fi &&
  if [[ $VGA == *Intel* ]] ; then
     OPTS=${OPTS//disable-intel/enable-intel}
  fi &&
  if [[ $VGA == *ATI* ]] ; then
     OPTS=${OPTS//disable-radeon/enable-radeon}
  fi &&

  default_build

) > $C_FIFO 2>&1
