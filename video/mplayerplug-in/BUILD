(

  ./configure --with-gecko-sdk=${SOURCE_DIRECTORY}/gecko-sdk	\
    --enable-gtk2			\
    $OPTS
  make                                  &&
  prepare_install                       &&
  mkdir -p /opt/lunar/plugins           &&
  cp mplayerplug-in.so /opt/lunar/plugins/ &&

  if module_installed firefox; then
    cp mplayerplug-in.xpt /opt/lunar/firefox/lib/mozilla/components/
  fi
  if module_installed mozilla; then
    cp mplayerplug-in.xpt /usr/lib/mozilla/components
  fi

) > $C_FIFO 2>&1
