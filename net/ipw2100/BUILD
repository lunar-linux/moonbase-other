(

  if [ $WITH_LEGACY == "y" ]; then
    message "Enabling legacy firmware loading ..."
    sedit "s:# CONFIG_IPW2100_LEGACY_FW_LOAD=y:CONFIG_IPW2100_LEGACY_FW_LOAD=y:" Makefile
  fi

  if [ $WITH_WPA == "y" ]; then
    message "Enabling WPA support ..."
    sedit "s:# CONFIG_IEEE80211_WPA:CONFIG_IEEE80211_WPA:" Makefile
  fi
	
  # Debug sucks
  message "Disabling debug messages ..."
  sedit "s:CONFIG_IPW_DEBUG=y:#CONFIG_IPW_DEBUG=y:" Makefile

  patch_it $SOURCE3 0  &&
	
  make HOSTAP=hostap-driver-$HOSTAPVER	&&
  prepare_install &&
  make install

) > $C_FIFO 2>&1
