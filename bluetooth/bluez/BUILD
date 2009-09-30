(  

#  patch_it $SOURCE_CACHE/$SOURCE2 0  &&

  OPTS+=" --build=$BUILD          \
          --host=$BUILD           \
          --enable-configfiles    \
          --with-telephony=dummy  \
          --enable-gstreamer      "  &&  

  default_build  &&

#  sedit "s:#\[A:\[A:" audio/audio.conf   &&
#  sedit "s:#SBCS:SBCS:" audio/audio.conf &&
#  sedit "s:#MPEG:MPEG:" audio/audio.conf &&
#  sedit "s:#AutoConnect:AutoConnect:" audio/audio.conf &&

  mkdir -p /etc/bluetooth                  &&
  cp -f audio/audio.conf /etc/bluetooth/   &&
  cp -f network/*.conf /etc/bluetooth/     &&
  cp -f input/*.conf /etc/bluetooth/       &&
  cp -f serial/serial.conf /etc/bluetooth/ &&

  mkdir -p /etc/alsa &&
  cp -f audio/bluetooth.conf /etc/alsa  &&

  echo -e "@hooks [\n\t{\n\t\tfunc load\n\t\tfiles [\n\t\t\t"/etc/alsa/bluetooth.conf"\n\t\t]\n\
          \t\terrors false\n\t}\n]" > $SOURCE_DIRECTORY/asound.conf &&
  install -m644 asound.conf /etc/ 

) > $C_FIFO 2>&1
