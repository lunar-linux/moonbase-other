(

  INSTALL_DIRECTORY=/opt/lunar/chkrootkit/$VERSION/bin	&&
  make							&&
  prepare_install					&&
  mkdir -p $INSTALL_DIRECTORY				&&
  for binary in check_wtmpx chkdirs chklastlog chkproc chkrootkit chkwtmp  ifpromisc strings-static; do
    install -o root -g root -m700 $SOURCE_DIRECTORY/$binary $INSTALL_DIRECTORY
  done

) > $C_FIFO 2>&1
