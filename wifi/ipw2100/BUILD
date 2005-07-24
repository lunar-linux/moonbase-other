(

  if [ $WITH_WPA == "y" ] ; then
    message "${MESSAGE_COLOR}Enabling WPA support ...${DEFAULT_COLOR}"
    sedit 's/#\ CONFIG_IEEE80211_WPA/CONFIG_IEEE80211_WPA/' Makefile
  fi &&
	
  if [ $WITH_DEBUG == "y" ] ; then
  message "${MESSAGE_COLOR}Disabling debug messages ...${DEFAULT_COLOR}"
  sedit 's/CONFIG_IPW_DEBUG=y/#CONFIG_IPW_DEBUG=y/' Makefile
  fi &&

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  default_make

) > $C_FIFO 2>&1
