(

  if ! [ -f /usr/lib/libadns.so ]; then
  ln -s /usr/lib/libadns.so.1.0 /usr/lib/libadns.so
  fi
  patch_it  $SOURCE_CACHE/$SOURCE2 1  &&
  make                                            &&
  prepare_install                                 &&
  install -o 0 -g 0 -m 755 -s src/gconnmon/gconnmon  /usr/bin
  install -o 0 -g 0 -m 755 -s src/connmon/connmon    /usr/bin

) > $C_FIFO 2>&1
