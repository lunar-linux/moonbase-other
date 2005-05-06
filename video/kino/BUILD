(

  sedit "s/-O2\"/$CFLAGS\"/g" configure &&
  OPTS="$OPTS --with-hotplug-script-dir=/etc/hotplug/usb --with-hotplug-usermap-dir=/etc/hotplug/usb" &&
  default_build

) > $C_FIFO 2>&1
