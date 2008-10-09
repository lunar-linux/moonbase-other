(

  if [ "$USE_XINPUT" == "y" ]; then
    # XInput support is needed for Wacom tablets to work in GIMP
     OPTS="$OPTS --with-xinput=yes --enable-debug=no"
  fi &&

  default_build

) > $C_FIFO 2>&1
