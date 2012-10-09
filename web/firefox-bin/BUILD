(

  prepare_install  &&
  message "${MESSAGE_COLOR}Installing Firefox ${VERSION}...${DEFAULT_COLOR}"  &&
  cd /usr/lib  &&
  unpack $SOURCE  &&

  ln -snf /usr/lib/lunar/plugins /usr/lib/firefox/plugins  &&
  if [ ! -h /usr/bin/firefox ]; then
    ln -snf /usr/lib/firefox/firefox /usr/bin/firefox
  fi &&

 # Now the .desktop file and the icon
 mkdir -p /usr/share/applications /usr/share/pixmaps  &&
 install -m644 $SCRIPT_DIRECTORY/firefox-bin.desktop /usr/share/applications

) > $C_FIFO 2>&1
