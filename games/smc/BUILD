(

  # Compile with cegui 0.7.x
  patch_it $SOURCE3 1 &&

  OPTS+=" --datarootdir=/usr/share/games --exec-prefix=/usr" &&

  default_game_build &&

  mkdir -p /usr/share/pixmaps/ /usr/share/applications/ &&
  ln -sf /usr/share/games/smc/pixmaps/game/items/mushroom_red.png /usr/share/pixmaps/smc.png &&

  cat << EOF > /usr/share/applications/smc.desktop
[Desktop Entry]
Name=Secret Maryo Chronicles
Comment=$SHORT
Exec=$MODULE
Icon=$MODULE
Terminal=false
Type=Application
Categories=Game;ArcadeGame;
EOF

) > $C_FIFO 2>&1
