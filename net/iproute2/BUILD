(

  ./configure &&
  KERNEL_INCLUDE=/usr/include/ make &&
  prepare_install &&

  cp -r etc/iproute2 /etc/iproute2 &&
  cp tc/tc /sbin &&
  cd ip &&
  cp ifcfg ip routef routel rtmon rtpr /sbin 

) > $C_FIFO 2>&1

