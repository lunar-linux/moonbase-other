(

  default_game_build &&

  if in_depends $MODULE mesa-lib ; then
    # Desktop icon
    install -Dm 644 {,/usr/share/pixmaps/}$MODULE.png &&

    # Desktop menu entry
    cat > $MODULE.desktop << EOF &&
[Desktop Entry]
Type=Application
Name=Alien Arena
Comment=Multiplayer retro sci-fi deathmatch
Exec=alienarena
Icon=$MODULE
Categories=Game;ActionGame;
EOF

    install -Dm 644 {,/usr/share/applications/}$MODULE.desktop
  fi &&

  # Docs
  mv {docs,Tools}/* . &&
  gather_docs *.txt LinuxScripts

) > $C_FIFO 2>&1
