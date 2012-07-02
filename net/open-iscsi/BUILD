(
  
  patch_it $SOURCE2 1 &&
  patch_it $SOURCE3 1 &&
  patch_it $SOURCE4 1 &&

  cd $SOURCE_DIRECTORY/utils/open-isns &&
  ./configure --with-slp --with-security=no &&
  cd $SOURCE_DIRECTORY &&
  OPTFLAGS=$CFLAGS make user &&
  prepare_install &&
  make sbindir=/sbin install_user &&
  install -m 0755 -o root -g root usr/iscsistart /sbin/ &&
  chmod 600 /etc/iscsi/iscsid.conf

) > $C_FIFO 2>&1
