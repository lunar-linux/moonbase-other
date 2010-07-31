(
  # before load GNUSTEP variables
  . /etc/profile.d/gnustep.rc &&
  . $GNUSTEP_SYSTEM_ROOT/Library/Makefiles/GNUstep.sh &&

  make GNUSTEP_INSTALLATION_DOMAIN=SYSTEM &&
  prepare_install &&
  make GNUSTEP_INSTALLATION_DOMAIN=SYSTEM install
) > $C_FIFO 2>&1
