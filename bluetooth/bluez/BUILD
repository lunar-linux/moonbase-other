(  

  OPTS+=" --build=$BUILD --host=$BUILD --with-telephony=dummy" &&

  default_build  &&

  mkdir -p /etc/bluetooth                    &&
  install src/main.conf /etc/bluetooth/      &&
  install audio/audio.conf /etc/bluetooth/   &&
  install network/*.conf /etc/bluetooth/     &&
  install input/*.conf /etc/bluetooth/       &&
  install serial/serial.conf /etc/bluetooth/ &&
  install tools/rfcomm.conf /etc/bluetooth/  &&

  mkdir -p /etc/alsa  &&
  install audio/bluetooth.conf /etc/alsa  &&

  echo -e "@hooks [\n\t{\n\t\tfunc load\n\t\tfiles [\n\t\t\t"/etc/alsa/bluetooth.conf"\n\t\t]\n\
          \t\terrors false\n\t}\n]" > $SOURCE_DIRECTORY/asound.conf  &&

  install -m644 asound.conf /etc/  &&
  install -m755 scripts/bluetooth_serial /etc/init.d/

) > $C_FIFO 2>&1
