(

  make  -C src     &&
  prepare_install  &&
  make  -C src install &&
  if [ ! -e "/sbin/service" ]; then
     cp $SCRIPT_DIRECTORY/service /sbin/service
     chmod 0755 /sbin/service
  fi

) > $C_FIFO 2>&1
