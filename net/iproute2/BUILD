(
   patch_it $SOURCE2 0

  sedit 's@linux/socket.h@sys/socket.h@' include/linux/netlink.h

  ./configure &&
  KERNEL_INCLUDE=/usr/include/ make SBINDIR=/sbin &&
  prepare_install &&
  make SBINDIR=/sbin install	

) > $C_FIFO 2>&1

