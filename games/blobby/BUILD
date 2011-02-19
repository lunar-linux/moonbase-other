(

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX $OPTS  &&
  default_make  &&

  # Desktop menu entry
  cat > $MODULE.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=Blobby Volley
Comment=$SHORT
Exec=$MODULE
Icon=$MODULE
Categories=Game;ArcadeGame;
EOF

  install -D -m644 $MODULE.desktop /usr/share/applications/$MODULE.desktop  &&
  
  # Desktop icon
  cp data/Icon.bmp .  &&
  bmptopnm Icon.bmp > Icon.pnm  &&
  # With the help of http://netpbm.sourceforge.net/doc/pnmtopng.html
  # to remove ugly black border.
  pnmtopng Icon.pnm -transparent =black > Icon.png  &&
  install -D -m644 Icon.png /usr/share/pixmaps/$MODULE.png

) > $C_FIFO 2>&1
