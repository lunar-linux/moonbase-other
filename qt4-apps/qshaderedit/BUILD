(

  source /etc/profile.d/qt4.rc &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX &&

  default_make &&

  # Desktop menu entry
  cat > ${MODULE}.desktop << EOF  &&

[Desktop Entry]
Type=Application
Name=qshaderedit
Comment=a real-time shader editor
Exec=$QTDIR/bin/qshaderedit
Categories=Qt;KDE;Graphics;
EOF

  install -D -m644 ${MODULE}.desktop $QTDIR/share/applications/${MODULE}.desktop

) > $C_FIFO 2>&1
