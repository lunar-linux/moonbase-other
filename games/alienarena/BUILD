(

  default_build &&

  # Desktop icon
  install -D -m644 aa.png /usr/share/pixmaps/${MODULE}.png  &&

  # Desktop menu entry
  cat > ${MODULE}.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=Alien Arena
Comment=Multiplayer retro sci-fi deathmatch
Exec=crx
Icon=/usr/share/pixmaps/${MODULE}.png
Categories=Game;ActionGame;
EOF

  install -D -m644 ${MODULE}.desktop /usr/share/applications/${MODULE}.desktop  &&

  install -D -m664 Tools/LinuxScripts/* /usr/share/doc/alienarena/

) > $C_FIFO 2>&1
