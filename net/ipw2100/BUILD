(

  if [ $WITH_LEGACY ]; then
    message "Enabling legacy firmware loading ..."
    sedit "s:# CONFIG_IPW2100_LEGACY_FW_LOAD=y:CONFIG_IPW2100_LEGACY_FW_LOAD=y:" Makefile
  fi
	
  # Debug sucks
  message "Disabling debug messages ..."
  sedit "s:CONFIG_IPW_DEBUG=y:#CONFIG_IPW_DEBUG=y:" Makefile
	
  make HOSTAP=hostap-driver-$HOSTAPVER	&&
  prepare_install &&
  make install

) > $C_FIFO 2>&1
