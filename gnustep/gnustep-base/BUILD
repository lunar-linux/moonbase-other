(
  # before load GNUSTEP variables
  . $GNUSTEP_SYSTEM_ROOT/Library/Makefiles/GNUstep.sh &&

  default_config &&
  default_make 

  if ! grep -q "$GNUSTEP_SYSTEM_ROOT/Library/" /etc/ld.so.conf; then
    echo "$GNUSTEP_SYSTEM_ROOT/Library/" >> /etc/ld.so.conf  
  fi
) > $C_FIFO 2>&1
