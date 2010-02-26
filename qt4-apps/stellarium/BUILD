(

  OOTB_DIR="$SOURCE_DIRECTORY/$MODULE-build"  &&

  source /etc/profile.d/qt4.rc   &&

  mkdir $OOTB_DIR  &&
  cd $OOTB_DIR     &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX   \
                           -DCMAKE_BUILD_TYPE=RELEASE              \
                           $OPTS                                  &&

  default_make

  # Desktop menu entry
  cat > ${MODULE}.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=Stellarium
Comment=3D photo-realistic skies in real time
Exec=$QTDIR/bin/stellarium
Icon=$QTDIR/share/$MODULE/data/$MODULE.ico
Categories=Qt;KDE;Science;
EOF

  install -D -m644 ${MODULE}.desktop /usr/share/applications/${MODULE}.desktop

) > $C_FIFO 2>&1
