(

  default_config                                &&
  make                                          &&
  prepare_install                               &&
  make -C daemon install                        &&
  make -C lib install                           &&
  make -C modules install                       &&
  make -C man install                           &&
  mkdir -p $DOCUMENT_DIRECTORY/$MODULE          &&
  cp -a samples $DOCUMENT_DIRECTORY/$MODULE     &&
  if [ ! -f /etc/auto.master ] ; then
    install -m 644 samples/auto.* /etc/
  fi

) > $C_FIFO 2>&1
