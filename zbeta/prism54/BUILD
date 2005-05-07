(

  prepare_install &&
	
  if [ ! -d "/etc/hotplug" ] ; then
    mkdir -p /etc/hotplug
	fi
  
	cp $SOURCE_CACHE/$SOURCE3 /etc/hotplug &&
  chmod 700 /etc/hotplug/$SOURCE3 &&
  chown 0:0 /etc/hotplug/$SOURCE3 || true

  make KDIR=/usr/src/linux modules &&
  make KDIR=/usr/src/linux install &&
  mkdir -p /usr/lib/hotplug/firmware &&
  cp $SOURCE_CACHE/$SOURCE2 /usr/lib/hotplug/firmware 

) > $C_FIFO 2>&1
