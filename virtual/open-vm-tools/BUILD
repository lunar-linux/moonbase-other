(

  ./configure --prefix=/usr --disable-static --disable-unity &&
  make &&
  cd modules &&
  make
  cd .. &&
  prepare_install &&
  make install &&
  mkdir -p /mnt/hgfs &&
  install -m700 $SCRIPT_DIRECTORY/mount-vmware /etc/init.d/

) > $C_FIFO 2>&1
