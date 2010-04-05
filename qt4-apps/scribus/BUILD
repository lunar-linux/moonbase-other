(

  OOTB_DIR="$SOURCE_DIRECTORY/$MODULE-build" &&

  source /etc/profile.d/qt4.rc &&

  mkdir $OOTB_DIR &&
  cd $OOTB_DIR &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE             \
                           $OPTS                                 &&

  default_make &&

# Lets make a Desktop menu entry

  cat > ${MODULE}.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=Scribus
Comment=A Qt desktop publishing program
Exec=$QTDIR/bin/scribus
Icon=$QTDIR/share/scribus/icons/scribus.png
Categories=Qt;KDE;Office;
EOF

  install -D -m644 ${MODULE}.desktop /usr/share/applications/${MODULE}.desktop


) > $C_FIFO 2>&1
