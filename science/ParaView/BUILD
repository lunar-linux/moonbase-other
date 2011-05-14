(

  OOSB_DIR="$SOURCE_DIRECTORY/$MODULE-build"  &&

  mkdir $OOSB_DIR  &&
  cd $OOSB_DIR     &&

  cmake -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
        -DCMAKE_BUILD_TYPE=RELEASE             \
        -DBUILD_SHARED_LIBS=ON                 \
        $OPTS                                  \
        $SOURCE_DIRECTORY/                    &&

  default_make &&

  install Documentation/ParaViewLogo.png /usr/share/icons &&

  # Desktop menu entry
  cat > ${MODULE}.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=ParaView
Comment=data analysis and visualization
Exec=/usr/bin/paraview
Icon=/usr/share/icons/ParaViewLogo.png
Categories=Qt;KDE;Science;
EOF

  install -D -m644 ${MODULE}.desktop /usr/share/applications/${MODULE}.desktop

) > $C_FIFO 2>&1
