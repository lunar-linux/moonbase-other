(

  if ! [ -f /usr/lib/libadns.so ]; then
  ln -s /usr/lib/libadns.so.1.0 /usr/lib/libadns.so
  fi
  patch  -p1  <  $SCRIPT_DIRECTORY/connmon.patch
  make                                            &&
  prepare_install                                 &&
  cp  src/connmon/connmon  /usr/bin

) > $C_FIFO 2>&1
