(

  if [ ! -h /usr/X11R6 ] && [ -d /usr/X11R6 ]; then
	message "You still have the remains of XOrg lying around.";
	message "Please make sure you have read the XOrg7 upgrade";
	message "instructions at:";
	message "";
	message "http://wiki.lunar-linux.org/index.php/Install_XOrg7";
	message "";
	exit 1;  
  fi

  default_build

	echo export PATH=\""${MODULE_PREFIX}"/bin:'$PATH'\" >> $SOURCE_DIRECTORY/x11r7.rc;
	echo export PKG_CONFIG_PATH=\""${MODULE_PREFIX}"/lib/pkgconfig:'$PKG_CONFIG_PATH'\" >> $SOURCE_DIRECTORY/x11r7.rc;

	install -m644 $SOURCE_DIRECTORY/x11r7.rc /etc/profile.d/;

) > $C_FIFO 2>&1
