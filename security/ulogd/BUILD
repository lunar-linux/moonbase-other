(

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
  mkdir -p $DOCUMENT_DIRECTORY/ulogd &&
  install doc/my* doc/ul* $DOCUMENT_DIRECTORY/ulogd/

) > $C_FIFO 2>&1
