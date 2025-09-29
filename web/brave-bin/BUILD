prepare_install &&

mkdir -p /usr/lib/brave &&
cp -r . /usr/lib/brave &&

# allow firejail users to get the suid sandbox working
chmod 4755 /usr/lib/brave/chrome-sandbox &&

install -Dm0755 $SCRIPT_DIRECTORY/brave-bin.sh /usr/bin/brave &&
install -Dm0644 -t /usr/share/applications $SCRIPT_DIRECTORY/brave-browser.desktop &&

for size in 16x16 24x24 32x32 48x48 64x64 128x128 256x256; do
 install -Dm0644 product_logo_${size/x*/}.png /usr/share/icons/hicolor/$size/apps/brave-desktop.png
done
