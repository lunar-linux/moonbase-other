(

  cd $SOURCE_DIRECTORY  &&
  gcc $CFLAGS -o $MODULE $SOURCE &&
  prepare_install &&
  install -m755 $MODULE /usr/sbin/
  
) > $C_FIFO 2>&1
