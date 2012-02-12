(

  VER=`lvu version x3270|cut -c 1-3` &&

  OPTS+=" --with-fontdir=/usr/share/fonts/X11/misc" &&

  cd x3270-$VER &&
  default_build $OPTS &&
  make install.man &&

# Build the TCL based terminal
  if [ $BUILD_TCL3270 == "y" ]; then
    cd ../tcl3270-$VER  &&
    default_build $OPTS &&
    make install.man    &&
  # Desktop menu entry
  cat > tcl3270.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=tcl3270
Comment=An IBM 3278/3279 terminal emulator
Exec=tcl3270
Icon=/usr/share/pixmaps/x3270-icon2.xpm
Categories=Application;KDE;Utility;
Terminal=1
TerminalOptions=
EOF

  install -D -m644 tcl3270.desktop /usr/share/applications/tcl3270.desktop

  fi &&

# Build the scripting based terminal  
  if [ $BUILD_S3270 == "y" ]; then
    cd ../s3270-$VER &&
    default_build $OPTS &&
    make install.man    &&
  # Desktop menu entry
  cat > s3270.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=s3270
Comment=An IBM 3278/3279 terminal emulator
Exec=s3270
Icon=/usr/share/pixmaps/x3270-icon2.xpm
Categories=Application;KDE;Utility;
Terminal=1
TerminalOptions=
EOF

  install -D -m644 s3270.desktop /usr/share/applications/s3270.desktop

  fi &&

  if [ $BUILD_C3270 == "y" ]; then
    cd ../c3270-$VER &&
    default_build $OPTS &&
    make install.man    &&
  # Desktop menu entry
  cat > c3270.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=c3270
Comment=An IBM 3278/3279 terminal emulator
Exec=c3270
Icon=/usr/share/pixmaps/x3270-icon2.xpm
Categories=Application;KDE;Utility;
Terminal=1
TerminalOptions=
EOF

  install -D -m644 c3270.desktop /usr/share/applications/c3270.desktop

  fi &&

# Desktop icon
  install -D -m644 $SOURCE_DIRECTORY/x3270-$VER/x3270-icon2.xpm /usr/share/pixmaps/x3270-icon2.xpm  &&

  # Desktop menu entry
  cat > ${MODULE}.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=x3270
Comment=An IBM 3278/3279 terminal emulator
Exec=$MODULE
Icon=/usr/share/pixmaps/x3270-icon2.xpm
Categories=Application;KDE;Utility;
EOF

  install -D -m644 ${MODULE}.desktop /usr/share/applications/${MODULE}.desktop

) > $C_FIFO 2>&1
