(

  . /etc/profile.d/qt4.rc &&

  OPTS+=" --enable-build-type=release --with-frontend=qt4" &&

  default_build &&

  # Desktop menu entry
  cat > ${MODULE}.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=LyX
Comment=The Document Processor
Exec=$QTDIR/bin/lyx
Icon=$QTDIR/share/lyx/images/lyx.png
Categories=Qt;KDE;Graphics;Office;
EOF

  install -D -m644 ${MODULE}.desktop /usr/share/applications/${MODULE}.desktop

) > $C_FIFO 2>&1
