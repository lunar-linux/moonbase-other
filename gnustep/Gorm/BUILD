(
  # before load GNUSTEP variables
  . $GNUSTEP_SYSTEM_ROOT/Makefiles/GNUstep.sh &&
  devoke_installwatch &&
  make &&
  invoke_installwatch &&
  prepare_install &&
  make install
) > $C_FIFO 2>&1
