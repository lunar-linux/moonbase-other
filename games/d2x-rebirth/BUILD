(

  sedit "/^BIN_DIR =/s/.*/BIN_DIR = '\/usr\/games'/" SConstruct &&
  # Use same executable filename as the module name
  sedit "s:d2x-rebirth-gl:d2x-rebirth:" SConstruct &&
  # Replaces dos2unix, to fix line-endings
  sedit 's/\r//' *.txt &&

  opts="prefix=/usr sdlmixer=1" &&
  scons $opts &&
  
  prepare_install &&
  scons $opts install &&
  # Create directory for manually-installed data files
  mkdir -p /usr/share/games/d2x-rebirth/missions &&

  # Desktop menu entry
  cat > $MODULE.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=Descent 2 Rebirth
Comment=$SHORT
Exec=$MODULE
Icon=$MODULE
Categories=Game;ActionGame;
EOF

  install -D -m644 $MODULE.desktop /usr/share/applications/$MODULE.desktop &&
  install -D -m644 $MODULE.xpm     /usr/share/icons/$MODULE.xpm
  
) > $C_FIFO 2>&1 

