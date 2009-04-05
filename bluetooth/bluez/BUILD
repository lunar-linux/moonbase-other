(  


  OPTS+=" --enable-tools   \
          --enable-bccmd   \
          --enable-hid2hci \
          --enable-dfutool \
          --enable-hidd    \
          --enable-pand    \
          --enable-dund    \
          --enable-manpages\
          --enable-configfiles   \
          --with-telephony=dummy \
          --enable-gstreamer     \
          $OPTS"

  default_build &&

  cp audio/*.conf  /etc/bluetooth/  &&
  cp network/*.conf /etc/bluetooth/ &&
  cp input/*.conf /etc/bluetooth    &&
  mv /etc/udev/bluetooth.rules /lib/udev/rules.d/91.bluetooth.rules

) > $C_FIFO 2>&1
