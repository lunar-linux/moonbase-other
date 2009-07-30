(
  # before load GNUSTEP variables
  . /etc/profile.d/gnustep.rc &&
  . $GNUSTEP_SYSTEM_ROOT/Library/Makefiles/GNUstep.sh &&

  ./configure &&
  make GNUSTEP_INSTALLATION_DOMAIN=SYSTEM &&
  prepare_install &&
  make GNUSTEP_INSTALLATION_DOMAIN=SYSTEM install &&

  cd Apps_wrappers &&
  cp -a * $GNUSTEP_SYSTEM_ROOT/Applications

) > $C_FIFO 2>&1
