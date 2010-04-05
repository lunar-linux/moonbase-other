(

  rpm2cpio $SOURCE > $MODULE.cpio &&
  cpio -id < $SOURCE_DIRECTORY/$MODULE.cpio &&
  prepare_install &&

  cp -Rf etc/* /etc/ &&
  cp -Rf usr/* /usr/

) > $C_FIFO 2>&1
