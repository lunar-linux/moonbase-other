. /etc/profile.d/qt5.rc &&

QT_SELECT=qt5 qmake PREFIX=/usr -config release $OPTS &&

default_make &&
prepare_install &&

mkdir -p /usr/share/$MODULE &&
install -D -m755 client/icons/*.* /usr/share/$MODULE/ &&

cat > ${MODULE}.desktop << EOF &&
[Desktop Entry]
Name=Ostinato
Comment=Network packet crafter/traffic generator and analyze
Exec=${MODULE_PREFIX}/bin/ostinato
Icon=${MODULE_PREFIX}/share/$MODULE/name.png
Terminal=false
Type=Application
Categories=Application;Network;
EOF

install -D -m644 ${MODULE}.desktop ${MODULE_PREFIX}/share/applications/${MODULE}.desktop
