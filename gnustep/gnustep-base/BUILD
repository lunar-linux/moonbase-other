(
  # before load GNUSTEP variables
  . /etc/profile.d/gnustep.rc &&
  . $GNUSTEP_SYSTEM_ROOT/Library/Makefiles/GNUstep.sh &&

#  default_config &&
#  default_make 
  default_build &&

  if ! grep -q "$GNUSTEP_SYSTEM_ROOT/Library/" /etc/ld.so.conf; then
    echo "$GNUSTEP_SYSTEM_ROOT/Library/" >> /etc/ld.so.conf  
  fi
) > $C_FIFO 2>&1
