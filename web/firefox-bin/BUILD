prepare_install &&
message "${MESSAGE_COLOR}Installing Firefox ${VERSION}...${DEFAULT_COLOR}" &&
cd /usr/lib &&
unpack $SOURCE &&

ln -snf /usr/lib/lunar/plugins /usr/lib/firefox/browser/plugins &&
if [ ! -h /usr/bin/firefox ]; then
  ln -snf /usr/lib/firefox/firefox /usr/bin/firefox
fi &&

# Now the .desktop file and the icon
mkdir -p /usr/share/applications /usr/share/pixmaps &&
install -m644 $SCRIPT_DIRECTORY/firefox-bin.desktop /usr/share/applications/ &&
ln -snf /usr/lib/firefox/browser/icons/mozicon128.png /usr/share/pixmaps/firefox.png
