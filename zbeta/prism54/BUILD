( 
if [ -e "/etc/hotplug" ]; then
  cp $SOURCE_CACHE/$SOURCE3 /etc/hotplug &&
  chmod 700 /etc/hotplug/$SOURCE3 &&
  chown 0:0 /etc/hotplug/$SOURCE3 || true
else 
  mkdir -p /etc/hotplug &&
  cp $SOURCE_CACHE/SOURCE3 /etc/hotplug &&
  chmod 700 /etc/hotplug/$SOURCE3 &&
  chown 0:0 /etc/hotplug/$SOURCE3 || true
fi

  make KDIR=/usr/src/linux modules &&
  make KDIR=/usr/src/linux install &&
  mkdir -p /usr/lib/hotplug/firmware &&
  cp $SOURCE_CACHE/$SOURCE2 /usr/lib/hotplug/firmware 

) > $C_FIFO 2>&1
