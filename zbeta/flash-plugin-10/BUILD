(

  # flash looks for old libcurl.so.3
  # so help him find it
  if [ ! -e "/usr/lib/libcurl.so.3" ]
  then
  ln -s /usr/lib/libcurl.so /usr/lib/libcurl.so.3
  fi &&

  cd $SOURCE_DIRECTORY             &&
  prepare_install                  &&
  mkdir -p /opt/lunar/plugins      &&
  install -m755 libflashplayer.so /opt/lunar/plugins &&
  rm -f $SOURCE_CACHE/$SOURCE

) > $C_FIFO 2>&1
