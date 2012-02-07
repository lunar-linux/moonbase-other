(

  source /etc/profile.d/qt4.rc &&
  source /etc/profile.d/kde4.rc &&

  QT_CREATOR_BLD="$SOURCE_DIRECTORY/creator-build" &&

  mkdir $QT_CREATOR_BLD &&
  cd $QT_CREATOR_BLD    &&

  qmake $SOURCE_DIRECTORY/qtcreator.pro &&

  sedit "s:qdoc3 -creator:qdoc3:" Makefile &&

  make            &&
  prepare_install &&

  make install INSTALL_ROOT=$MODULE_PREFIX/ &&

  # Desktop menu entry
  cat > ${MODULE}.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=Qt Creator
Comment=Qt based Development Tool
Exec=$QTDIR/bin/qtcreator
Icon=/usr/share/icons/hicolor/24x24/apps/qtcreator.png
Categories=Application;Qt;KDE;Development;
EOF

  install -D -m644 ${MODULE}.desktop /usr/share/applications/${MODULE}.desktop

) > $C_FIFO 2>&1
