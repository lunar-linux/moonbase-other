(

  if [ $WITH_MONITOR == "y" ]; then
    message "Enabling monitor mode ..."
    sedit "s:# CONFIG_IPW_PROMISC=y:CONFIG_IPW_PROMISC=y:" Makefile
  fi

  if [ $WITH_WPA == "y" ]; then
    message "Enabling WPA support ..."
    sedit "s:# CONFIG_IEEE80211_WPA:CONFIG_IEEE80211_WPA:" Makefile
  fi
	
  # Debug sucks
  message "Disabling debug messages ..."
  sedit "s:CONFIG_IPW_DEBUG=y:#CONFIG_IPW_DEBUG=y:" Makefile

  make &&
  prepare_install &&
  make install

) > $C_FIFO 2>&1
