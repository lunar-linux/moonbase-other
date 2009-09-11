(  

  patch_it $SOURCE_CACHE/$SOURCE2 0  &&

  OPTS+=" --build=$BUILD          \
          --host=$BUILD           \
          --enable-configfiles    \
          --with-telephony=dummy  \
          --enable-gstreamer      "  

  default_build  &&

  sedit "s:#\[A:\[A:" audio/audio.conf   &&
  sedit "s:#SBCS:SBCS:" audio/audio.conf &&
  sedit "s:#MPEG:MPEG:" audio/audio.conf &&
  sedit "s:#AutoConnect:AutoConnect:" audio/audio.conf &&

  mkdir -p /etc/bluetooth                 &&
  cp -f audio/audio.conf /etc/bluetooth/  &&
  cp -f network/*.conf /etc/bluetooth/    &&
  cp -f input/*.conf /etc/bluetooth/      &&
  cp -f audio/bluetooth.conf /etc/asound.conf  &&
  cp -f serial/serial.conf /etc/bluetooth/

) > $C_FIFO 2>&1
