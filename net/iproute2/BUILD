(

  patch_it $SOURCE2 1 &&

  ./configure &&
  KERNEL_INCLUDE=/usr/include/ make SBINDIR=/sbin &&
  prepare_install &&
  make SBINDIR=/sbin install	

) > $C_FIFO 2>&1

