(  

  patch_it $SOURCE_CACHE/$SOURCE2 0 &&

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

  sedit "s:#\[A:\[A:" audio/audio.conf
  sedit "s:#SBCS:SBCS:" audio/audio.conf
  sedit "s:#MPEG:MPEG:" audio/audio.conf

  cp -f audio/*.conf /etc/bluetooth/    &&
  cp -f network/*.conf /etc/bluetooth/  &&
  cp -f input/*.conf /etc/bluetooth/    &&

  if [ ! -d /etc/default ] ; then
    mkdir -p /etc/default &&
    cp -f scripts/bluetooth.default /etc/default/bluetooth 
  fi

) > $C_FIFO 2>&1
