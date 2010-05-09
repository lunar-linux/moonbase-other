(

  cd x3270-3.3     &&
  default_build    &&
  make install.man &&

  # Desktop icon
  install -D -m644 x3270-icon2.xpm /usr/share/pixmaps/x3270-icon2.xpm  &&

  # Desktop menu entry
  cat > ${MODULE}.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=x3270
Comment=An IBM 3278/3279 terminal emulator
Exec=$MODULE
Icon=/usr/share/pixmaps/x3270-icon2.xpm
Categories=Application;KDE;Utility;
EOF

  install -D -m644 ${MODULE}.desktop /usr/share/applications/${MODULE}.desktop

) > $C_FIFO 2>&1
