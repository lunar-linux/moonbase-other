(

  sedit "s:/usr/local/:/usr/:g" ulogd.conf
  default_config &&
  make &&
  ( module_installed libpcap && cd pcap && make ) &&
  prepare_install &&
  make install &&
  ( module_installed libpcap && cd pcap && make install )

) > $C_FIFO 2>&1
