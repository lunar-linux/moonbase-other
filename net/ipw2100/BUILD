(
	if [ $WITH_LEGACY ]; then
	
	  message "Enabling legacy firmware loading ..."
	  sedit "s:# CONFIG_IPW2100_LEGACY_FW_LOAD=y:CONFIG_IPW2100_LEGACY_FW_LOAD=y:" Makefile
	
	fi
	
	# For now we need a patch for hostap-dev
	patch_it $SOURCE_CACHE/$SOURCE3 0

	make HOSTAP=hostap-driver-$HOSTAPVER	&&
  	make install

) > $C_FIFO 2>&1
