scons datadir=/usr/share/games/netpanzer &&

prepare_install &&

#they don't provide an installation script...
install -Dm0755 netpanzer /usr/games/ &&

install -Dd /usr/share/games/netpanzer &&
cp -rv cache maps pics powerups scripts sound units wads /usr/share/games/netpanzer/ &&
chmod -R o+r /usr/share/games/netpanzer/ &&
find /usr/share/games/netpanzer/ -type d -exec chmod o+x {} \; &&

install -Dm0644 netpanzer.png /usr/share/icons/hicolor/48x48/apps/ &&
install -Dm0644 support/icon/netpanzer.xpm /usr/share/pixmaps/ &&
install -Dm0644 netpanzer.png /usr/share/pixmaps/ &&

install -Dm0644 support/win32/netpanzer.desktop /usr/share/applications/ &&

unzip $SOURCE_CACHE/$SOURCE2 -d /usr/share/games/netpanzer/
