prepare_install &&
message "${MESSAGE_COLOR}Installing Firefox ${VERSION}...${DEFAULT_COLOR}" &&
cd /usr/lib &&
unpack $SOURCE &&

# symlink plugins folder
mkdir -p /usr/lib/lunar/plugins &&
ln -sfn /usr/lib/firefox/browser /usr/lib/lunar/plugins/ &&

if [ ! -h /usr/bin/firefox ]; then
  ln -snf /usr/lib/firefox/firefox /usr/bin/firefox
fi &&

# Now the .desktop file and the icon
mkdir -p /usr/share/applications /usr/share/pixmaps &&
install -m644 $SCRIPT_DIRECTORY/firefox-bin.desktop /usr/share/applications/ &&
cp /usr/lib/firefox/browser/chrome/icons/default/default128.png /usr/share/pixmaps/firefox.png
