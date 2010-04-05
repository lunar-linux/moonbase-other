(

  prepare_install   &&
  message "${MESSAGE_COLOR}Installing Thunderbird ${VERSION}...${DEFAULT_COLOR}"  &&
  cd /opt/lunar &&
  unpack $SOURCE &&

  if [ ! -h /usr/bin/thunderbird ]; then
    ln -snf /opt/lunar/thunderbird/thunderbird /usr/bin/thunderbird
  fi

    # Now the .desktop file and the icon
#   mkdir -p /usr/share/applications /usr/share/pixmaps &&
#   install -m644 $SOURCE_CACHE/$SOURCE2 /usr/share/applications &&
#   rm -f /usr/share/pixmaps/thunderbird.xpm &&
#   install -m644 $MOZILLA_HOME/icons/mozicon50.xpm /usr/share/pixmaps

) > $C_FIFO 2>&1
