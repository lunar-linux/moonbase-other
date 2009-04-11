(  

  OPTS+=" --enable-tools    \
          --enable-bccmd    \
          --enable-hid2hci  \
          --enable-dfutool  \
          --enable-hidd     \
          --enable-pand     \
          --enable-dund     \
          --enable-manpages       \
          --enable-configfiles    \
          --with-telephony=dummy  \
          --enable-gstreamer      \
          $OPTS"                 &&

  default_build  &&

  cp audio/*.conf /etc/bluetooth/    &&
  cp network/*.conf /etc/bluetooth/  &&
  cp input/*.conf /etc/bluetooth/    &&
  if [ -f /etc/udev/bluetooth.rules ]; then
    mv /etc/udev/bluetooth.rules /lib/udev/rules.d/91.bluetooth.rules
  fi

) > $C_FIFO 2>&1
