(

  make  -C src          &&
  prepare_install       &&
  make  -C src install  &&
  install -m0755 $SCRIPT_DIRECTORY/service /sbin/service

) > $C_FIFO 2>&1
