(

  patch_it $SOURCE2 0 &&

  source /etc/profile.d/qt4.rc &&

  default_cmake_build &&

  # Desktop menu entry
  cat > ${MODULE}.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=Tulip
Comment=Graph visualization software
Exec=$QTDIR/bin/tulip
Icon=$QTDIR/lib/tlp/bitmaps/logotulip.jpg
Categories=Qt;KDE;Science;
EOF

  install -D -m644 ${MODULE}.desktop /usr/share/applications/${MODULE}.desktop

) > $C_FIFO 2>&1
