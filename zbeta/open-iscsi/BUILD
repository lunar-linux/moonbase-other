(
  
  patch_it $SOURCE2 0 &&
  patch_it $SOURCE3 0 &&
  patch_it $SOURCE4 1 &&
  patch_it $SOURCE5 1 &&

  sedit 's;-lisns;& -lslp;g' usr/Makefile &&
  
  cd $SOURCE_DIRECTORY/utils/open-isns &&
  ./configure --with-slp &&
  cd $SOURCE_DIRECTORY &&
  OPTFLAGS=$CFLAGS make user &&
  prepare_install &&
  make sbindir=/sbin install_user &&
  install -m 0755 -o root -g root usr/iscsistart /sbin/ &&
  chmod 600 /etc/iscsi/iscsid.conf

) > $C_FIFO 2>&1
