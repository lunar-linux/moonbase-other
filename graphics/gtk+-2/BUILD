(

  if [ "$USE_XINPUT" == "y" ]; then
    # XInput support is needed for Wacom tablets to work in GIMP
     OPTS="$OPTS --with-xinput=yes --enable-debug=no"
  fi &&

  if [ "$FLASH_PATCH" == "y" ]; then
    # This patch is necessary so flash 9.0.48 works with qt browsers
    patch_it $SOURCE2 0 
  fi &&

  default_build

) > $C_FIFO 2>&1
