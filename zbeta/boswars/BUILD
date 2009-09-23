(

  # Use game datadir
  sedit "s:LIB_PATH  \".\":LIB_PATH  \"/usr/share/games/$MODULE\":" engine/include/stratagus.h  &&

  OPTS+=" prefix=/usr"  &&
  scons $OPTS  &&

  prepare_install  &&
  mkdir -p /usr/games/ /usr/share/games/$MODULE/  &&
  install -m755 $MODULE /usr/games/  &&
  cp -ra campaigns doc graphics intro languages maps scripts sounds units /usr/share/games/$MODULE/  &&

  # Desktop menu entry
  cat > ${MODULE}.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=Bos Wars
Comment=$SHORT
Exec=$MODULE
Icon=$MODULE
Categories=Game;StrategyGame;
EOF

  install -D -m644 ${MODULE}.desktop /usr/share/applications/${MODULE}.desktop  &&
  install -D -m644 $SOURCE_CACHE/$SOURCE2 /usr/share/pixmaps/${MODULE}.png  &&

  gather_docs *.txt

) > $C_FIFO 2>&1
