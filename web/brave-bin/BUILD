
prepare_install &&

mkdir -p /usr/lib/brave &&
cp -r . /usr/lib/brave &&

# allow firejail users to get the suid sandbox working
chmod 4755 /usr/lib/brave/chrome-sandbox &&

install -Dm0755 $SCRIPT_DIRECTORY/brave-bin.sh /usr/bin/brave &&
install -Dm0644 -t /usr/share/applications $SCRIPT_DIRECTORY/brave-browser.desktop &&
install -Dm0644 $SCRIPT_DIRECTORY/brave-bin-logo.png /usr/share/pixmaps/brave-desktop.png
