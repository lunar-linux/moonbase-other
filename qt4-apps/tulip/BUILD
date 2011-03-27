(

  OOSB_DIR="$SOURCE_DIRECTORY/$MODULE-build"  &&

  source /etc/profile.d/qt4.rc   &&

  mkdir $OOSB_DIR  &&
  cd $OOSB_DIR     &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE             \
                           $OPTS                                 &&

  default_make &&

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
