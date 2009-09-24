(

  OPTS+=" --datarootdir=/usr/share/games --exec-prefix=/usr" &&

  default_game_build &&
  
  mkdir -p /usr/share/pixmaps/ /usr/share/applications/ &&
  ln -sf /usr/share/games/smc/pixmaps/game/items/mushroom_red.png /usr/share/pixmaps/smc.png &&
  
  cat << EOF > /usr/share/applications/smc.desktop
[Desktop Entry]
Name=Secret Maryo Chronicles
Comment=Secret Maryo Chronicles is an open-source two-dimensional platform game
Exec=smc
Icon=smc
Terminal=false
Type=Application
Categories=Application;Game;
EOF

) > $C_FIFO 2>&1
