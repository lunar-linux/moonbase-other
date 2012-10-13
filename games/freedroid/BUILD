(

  #libvorbis moved the important function
  sedit 's:vorbis:vorbisfile:' configure.ac &&
  sedit 's:HAVE_LIBVORBIS:HAVE_LIBVORBISFILE:' src/sound.c &&
  autoreconf . &&

  default_game_build &&

  bmptopnm graphics/paraicon.bmp > paraicon.pnm  &&
  pnmtopng paraicon.pnm > $MODULE.png  &&
  install -D -m644 $MODULE.png /usr/share/pixmaps/$MODULE.png &&

  # Desktop menu entry
  cat > $MODULE.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=Freedroid
Comment=$SHORT
Exec=$MODULE
Icon=$MODULE
Categories=Game;ArcadeGame;
EOF

  install -D -m644 $MODULE.desktop /usr/share/applications/$MODULE.desktop

) > $C_FIFO 2>&1
