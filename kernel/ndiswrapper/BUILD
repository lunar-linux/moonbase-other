(

  KVERS=$(grep UTS_RELEASE /usr/src/linux/include/linux/version.h | cut -d'"' -f2)
  make KVERS=$KVERS          &&
  prepare_install            &&
  make KVERS=$KVERS install

) > $C_FIFO 2>&1
