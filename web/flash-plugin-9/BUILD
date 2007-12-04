(

  cd $SOURCE_DIRECTORY             &&
  prepare_install                  &&
  mkdir -p /opt/lunar/plugins      &&
  install -m755 libflashplayer.so /opt/lunar/plugins &&
  rm -f $SOURCE_CACHE/$SOURCE

) > $C_FIFO 2>&1
