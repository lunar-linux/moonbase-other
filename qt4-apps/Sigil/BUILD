(

  OOTB_DIR="$SOURCE_DIRECTORY/$MODULE-build"

  mkdir $OOTB_DIR &&
  cd $OOTB_DIR    &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE             &&

  default_make &&


  install -m 644 $SOURCE_DIRECTORY/src/Sigil/Resource_Files/icon/sgf.ico /usr/share/pixmaps/ &&

  # Desktop menu entry
  cat > ${MODULE}.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=Sigil
Comment=qt4 WYSIWYG ebook editor
Exec=/opt/lunar/qt/4/bin/sigil
Icon=/usr/share/pixmaps/sgf.ico
Categories=Qt;KDE;Office;
EOF

  install -D -m644 ${MODULE}.desktop /usr/share/applications/${MODULE}.desktop
) > $C_FIFO 2>&1
