(

  patch_it $SOURCE2 0 &&

  if [ $WITH_WPA == "y" ] ; then
    message "${MESSAGE_COLOR}Enabling WPA support ...${DEFAULT_COLOR}"
    sedit 's/#\ CONFIG_IEEE80211_WPA/CONFIG_IEEE80211_WPA/' Makefile
  fi &&
	
  if [ $WITH_DEBUG == "y" ] ; then
  message "${MESSAGE_COLOR}Disabling debug messages ...${DEFAULT_COLOR}"
  sedit 's/CONFIG_IPW_DEBUG=y/#CONFIG_IPW_DEBUG=y/' Makefile
  fi &&

  default_make

) > $C_FIFO 2>&1
