(

  export DEBUG=-DNDEBUG

  make configure    &&
  default_make      &&
  make install-dev  &&
  strip /usr/sbin/xfsdump /usr/sbin/xfsrestore

) > $C_FIFO 2>&1
