(

  patch_it ${SOURCE_CACHE}/$SOURCE3 0  &&
  make install                         &&
  install -p -m 755 $SOURCE_CACHE/$SOURCE2 /etc/hotplug

) > $C_FIFO 2>&1
