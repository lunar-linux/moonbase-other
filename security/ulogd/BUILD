(

  sedit "s:/usr/local/:/usr/:g" ulogd.conf
  default_config &&
  make &&
  if module_installed libpcap ; then
    make -C pcap
  fi &&  
  prepare_install &&
  make install &&
  install -m644 libipulog/libipulog.a /usr/lib &&
  if module_installed libpcap ; then
    make -C pcap install
  fi &&
  mkdir -p /usr/share/doc/ulogd &&
  install doc/my* doc/ul* /usr/share/doc/ulogd

) > $C_FIFO 2>&1
