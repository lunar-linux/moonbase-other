(  

# It wants to over write main and rfcomm, so if exist move 
  if [ -f /etc/bluetooth/main.conf ] ; then
    mv /etc/bluetooth/main.conf /etc/bluetooth/main.conf.orig
  fi &&

  if [ -f /etc/bluetooth/rfcomm.conf ] ; then
    mv /etc/bluetooth/rfcomm.conf /etc/bluetooth/rfcomm.conf.orig
  fi &&
 
  OPTS+=" --with-telephony=dummy" &&

  default_build  &&

  mkdir -p /etc/bluetooth &&

  if [ ! -f /etc/bluetooth/main.conf ]; then
    install src/main.conf /etc/bluetooth/
  fi &&

  if [ ! -f /etc/bluetooth/audio.conf ] ; then
    install audio/audio.conf /etc/bluetooth/
  fi &&

  if [ ! -f /etc/bluetooth/network.conf ] ; then
    install network/*.conf /etc/bluetooth/
  fi &&

  if [ ! -f /etc/bluetooth/input.conf ] ; then
    install input/*.conf /etc/bluetooth/
  fi &&

  if [ ! -f /etc/blueooth.serial.conf ] ; then
    install serial/serial.conf /etc/bluetooth/
  fi &&

  if [ ! -f /etc/bluetooth/rfcomm.conf ] ; then
  install tools/rfcomm.conf /etc/bluetooth/
  fi &&

  if [ ! -f /etc/bluetooth/proximity.conf ] ; then
    install proximity/proximity.conf /etc/bluetooth/
  fi &&

  mkdir -p /etc/alsa  &&
  install audio/bluetooth.conf /etc/alsa  &&

  echo -e "@hooks [\n\t{\n\t\tfunc load\n\t\tfiles [\n\t\t\t"/etc/alsa/bluetooth.conf"\n\t\t]\n\
          \t\terrors false\n\t}\n]" > $SOURCE_DIRECTORY/asound.conf  &&

  install -m644 asound.conf /etc/ &&

  if module_installed sysvinit ; then
    install -m755 scripts/bluetooth_serial /etc/init.d/
  fi &&

# If there were existing main and rfcomm conf files, put them back
  if [ -f /etc/bluetooth/main.conf.orig ] ; then
    mv /etc/bluetooth/main.conf.orig /etc/bluetooth/main.conf
  fi &&

  if [ -f /etc/bluetooth/rfcomm.conf.orig ] ; then
    mv /etc/bluetooth/rfcomm.conf.orig /etc/bluetooth/rfcomm.conf
  fi

) > $C_FIFO 2>&1
