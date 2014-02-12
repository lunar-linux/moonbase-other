  cd hostapd  &&
  cp defconfig .config  &&
  make  &&

  prepare_install  &&

  install hostapd -m755 /usr/sbin/ &&
  for file in hostapd.conf hostapd.accept hostapd.deny ; do
    if [[ ! -f /etc/$file ]]; then
      install -Dm0644 {,/etc/}$file
    fi
  done
