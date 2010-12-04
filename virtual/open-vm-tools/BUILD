(

  # --without-x is just ugly workaround which disables GUI but makes module buildable.
  # When next release appears it probably will have this compilation bug fixed so
  # remove this parameter and try building without it.
  ./configure --prefix=/usr --disable-static --disable-unity --without-x &&
  make &&
  cd modules &&
  make
  cd .. &&
  prepare_install &&
  make install &&
  mkdir -p /mnt/hgfs &&
  install -m700 $SCRIPT_DIRECTORY/mount-vmware /etc/init.d/

) > $C_FIFO 2>&1
