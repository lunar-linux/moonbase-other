(

  sedit "s:/usr/local/:/usr/:g" ulogd.conf
  default_config &&
  make &&
  ( module_installed libpcap && make -C pcap ) &&
  prepare_install &&
  make install &&
  ( module_installed libpcap && make -C pcap install ) &&
  mkdir -p /usr/share/doc/ulogd &&
  install doc/my* doc/ul* /usr/share/doc/ulogd

) > $C_FIFO 2>&1
