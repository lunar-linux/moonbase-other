(

	if [ $WITH_LEGACY ]; then
	  message "Enabling legacy firmware loading ..."
	  sedit "s:# CONFIG_IPW2100_LEGACY_FW_LOAD=y:CONFIG_IPW2100_LEGACY_FW_LOAD=y:" Makefile
	fi
	
	make HOSTAP=hostap-driver-$HOSTAPVER	&&
	prepare_install &&
  make install

) > $C_FIFO 2>&1
