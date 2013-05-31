(

  . /etc/profile.d/qt4.rc &&

  qmake -config release  PREFIX=/usr $OPTS &&

  default_make &&

  prepare_install &&

  mkdir /usr/share/$MODULE &&
  install client/icons/name.png /usr/share/$MODULE &&

  cat > ${MODULE}.desktop << EOF  &&
[Desktop Entry]
Name=Ostinato
Comment=Network packet crafter/traffic generator and analyze
Exec=${MODULE_PREFIX}/bin/ostinato
Icon=${MODULE_PREFIX}/share/$MODULE/name.png
Terminal=false
Type=Application
Categories=Qt;KDE;Internet;
EOF

  install -D -m644 ${MODULE}.desktop ${MODULE_PREFIX}/share/applications/${MODULE}.desktop

) > $C_FIFO 2>&1
