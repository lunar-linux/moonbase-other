(

  prepare_install  &&
  message "${MESSAGE_COLOR}Installing Thunderbird ${VERSION}...${DEFAULT_COLOR}"  &&
  cd /usr/lib/ &&
  unpack $SOURCE  &&

  if [ ! -h /usr/bin/thunderbird ]; then
    ln -snf /usr/lib/thunderbird/thunderbird /usr/bin/thunderbird
  fi &&

  # Now the .desktop file and the icon
  mkdir -p /usr/share/applications &&
  install -m644 $SCRIPT_DIRECTORY/thunderbird-bin.desktop /usr/share/applications

) > $C_FIFO 2>&1
