(

  make &&

  prepare_install &&  

  install -m 755 -t /sbin gdisk sgdisk fixparts &&

  gzip -9 gdisk.8 sgdisk.8 &&

  install -m 644 -t /usr/share/man/man8 gdisk.8.gz sgdisk.8.gz &&

  install -d /usr/share/doc/$MODULE &&

  install -m 644 -t /usr/share/doc/$MODULE README NEWS

) > $C_FIFO 2>&1
