(

  prepare_install   &&
  message "${MESSAGE_COLOR}Installing Firefox ${VERSION}...${DEFAULT_COLOR}"  &&
  cd /opt/lunar &&
  unpack $SOURCE &&

  # Install the plugins in the right directories
  mkdir -p /opt/lunar/plugins  &&
  for plugin in `ls /opt/lunar/firefox/plugins`; do
       `install -m755 /opt/lunar/firefox/plugins/$plugin /opt/lunar/plugins`; done  &&

  rm -rf /opt/lunar/firefox/plugins  &&
  ln -snf /opt/lunar/plugins /opt/lunar/firefox/plugins  &&
  if [ ! -h /usr/bin/firefox ]; then
    ln -snf /opt/lunar/firefox/firefox /usr/bin/firefox
  fi

# Not sure how to handle this, so I've left it commented out. Lunar Firefox devs can
# probably fix this better than I can.
  # Now the .desktop file and the icon
# mkdir -p /usr/share/applications /usr/share/pixmaps  &&
# install -m644 $SCRIPT_DIRECTORY/firefox.desktop /usr/share/applications  &&
  # please, dont just let the lin fail because /usr/share/pixmaps/firefox.xpm is an existing symlink...
# rm -f /usr/share/pixmaps/firefox.xpm  &&
# install -m644 $MOZILLA_HOME/icons/mozicon50.xpm /usr/share/pixmaps/firefox.xpm  &&

  # Make firefox use its own icon

# rm -rf /usr/lib/firefox-$VERSION/chrome/icons  &&
# mkdir -p /usr/lib/firefox-$VERSION/chrome/icons/default  &&

# for icon in 16 32 48; do
#   ln -sf /usr/lib/firefox-$VERSION/icons/mozicon128.png \
#          /usr/lib/firefox-$VERSION/chrome/icons/default/default$icon.png
# done

) > $C_FIFO 2>&1
