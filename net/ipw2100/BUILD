(
	sedit "s:# CONFIG_IPW2100_LEGACY_FW_LOAD=y:CONFIG_IPW2100_LEGACY_FW_LOAD=y:" Makefile	&&
	make HOSTAP=hostap-driver-$HOSTAPVER	&&
  	make install

) > $C_FIFO 2>&1
