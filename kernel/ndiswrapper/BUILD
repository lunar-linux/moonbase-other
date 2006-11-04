(

  KVER=$(if [ -f /usr/src/linux/include/linux/utsrelease.h ] ; then
    grep UTS_RELEASE /usr/src/linux/include/linux/utsrelease.h | cut -d'"' -f2
  else
    grep UTS_RELEASE /usr/src/linux/include/linux/version.h | cut -d'"' -f2
  fi)

  make KVERS=$KVER &&
  prepare_install &&
  make KVERS=$KVER install

) > $C_FIFO 2>&1
