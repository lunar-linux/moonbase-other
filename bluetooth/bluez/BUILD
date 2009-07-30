(  

  patch_it $SOURCE_CACHE/$SOURCE2 0 &&

  OPTS+=" --build=$BUILD    \
          --host=$BUILD     \
          --enable-tools    \
          --enable-bccmd    \
          --enable-hid2hci  \
          --enable-dfutool  \
          --enable-hidd     \
          --enable-pand     \
          --enable-dund     \
          --enable-test     \ 
          --enable-manpages       \
          --enable-configfiles    \
          --with-telephony=dummy  \
          --enable-gstreamer      \
          --enable-udevrules      \
          $OPTS"                 &&

  default_build  &&

  sedit "s:#\[A:\[A:" audio/audio.conf
  sedit "s:#SBCS:SBCS:" audio/audio.conf
  sedit "s:#MPEG:MPEG:" audio/audio.conf
  sedit "s:#AutoConnect:AutoConnect:" audio/audio.conf

  cp -f audio/audio.conf /etc/bluetooth/ &&
  cp -f network/*.conf /etc/bluetooth/   &&
  cp -f input/*.conf /etc/bluetooth/     &&
  cp -f audio/bluetooth.conf /etc/asound.conf

) > $C_FIFO 2>&1
