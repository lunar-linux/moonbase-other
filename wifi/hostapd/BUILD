(

  cd hostapd  &&
  cp defconfig .config  &&
  make  &&
  prepare_install  &&
  install hostapd -m755 /usr/sbin/
  for file in hostapd.conf hostapd.accept hostapd.deny ; do
    if [ ! -f /etc/$file ] ; then
      install $file /etc/
    fi
  done

) > $C_FIFO 2>&1
