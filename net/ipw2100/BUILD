(

	if [ $WITH_LEGACY ]; then
	  message "Enabling legacy firmware loading ..."
	  sedit "s:# CONFIG_IPW2100_LEGACY_FW_LOAD=y:CONFIG_IPW2100_LEGACY_FW_LOAD=y:" Makefile
	fi
	
	# Debug sucks
	  sedit "s:CONFIG_IPW2100_DEBUG=y:#CONFIG_IPW2100_DEBUG=y:" Makefile
	
	# Patching sucks
	  patch_it $SOURCE3 0
		
	make HOSTAP=hostap-driver-$HOSTAPVER	&&
	prepare_install &&
  make install

) > $C_FIFO 2>&1
