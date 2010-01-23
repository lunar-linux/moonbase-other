(

  . /etc/profile.d/qt4.rc  &&
  $QTDIR/bin/qmake qgit.pro &&

  make  &&
  prepare_install  &&
  install -m 755 -s bin/qgit ${MODULE_PREFIX}/bin  &&
  mkdir -p ${MODULE_PREFIX}/share/icons/  &&
  install -m 644 src/resources/qgit.ico ${MODULE_PREFIX}/share/icons/  &&

    # Desktop menu entry
  cat > ${MODULE}.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=qgit
Comment=Qt interface for git
Exec=$QTDIR/bin/qgit
Icon=$QTDIR/share/icons/qgit.ico
Categories=Qt;KDE;Development;
EOF

  install -D -m644 ${MODULE}.desktop $QTDIR/share/applications/${MODULE}.desktop

) > $C_FIFO 2>&1
