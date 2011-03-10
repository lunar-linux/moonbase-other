(

  prepare_install &&

  mkdir -p /usr/share/games/scummvm/BASS &&
  install -m 644 sky.* /usr/share/games/scummvm/BASS/ &&

  # Startup script, with sensible defaults
  cat > bass << EOF &&
#!/bin/sh
exec scummvm -f -g supereagle "\$@" -p /usr/share/games/scummvm/BASS sky
EOF

  install -D -m 755 bass /usr/games/bass &&

  # Desktop menu entry
  cat > bass.desktop << EOF &&
[Desktop Entry]
Type=Application
Name=Beneath a Steel Sky
Comment=$SHORT
Exec=bass
Icon=scummvm
Categories=Game;AdventureGame;
EOF

  install -D -m644 bass.desktop /usr/share/applications/bass.desktop &&

  gather_docs readme.txt

) > $C_FIFO 2>&1
