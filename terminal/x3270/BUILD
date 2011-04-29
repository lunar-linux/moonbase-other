(

  VER=`lvu version x3270|cut -c 1-3` &&

  cd x3270-$VER &&
  default_build  &&
  make install.man &&

# Build the TCL based terminal
  if [ $BUILD_TCL3270 == "y" ]; then
    cd ../tcl3270-$VER &&
    default_build &&
    make install.man
  fi &&

# Build the scripting based terminal  
  if [ $BUILD_S3270 == "y" ]; then
    cd ../s3270-$VER &&
    default_build &&
    make install.man
  fi &&

# This won't work until we do something different in the way we handle
# nucrses wide characters. As the ncursesw module does it now; it is 
# not sufficient or um, correct. 
#  if [ $BUILD_C3270 == "y" ]; then
#    cd ../c3270-$VER &&
#    default_build &&
#    make install.man
#  fi &&

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
