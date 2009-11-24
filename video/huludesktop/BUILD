(

  rpm2cpio $SOURCE_CACHE/$MODULE-i386.rpm > $MODULE.cpio &&
  cd / &&
  prepare_install &&
  cpio -idm < $SOURCE_DIRECTORY/$MODULE.cpio

) > $C_FIFO 2>&1
