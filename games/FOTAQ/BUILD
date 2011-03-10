(

  prepare_install &&

  mkdir -p /usr/share/games/scummvm/FOTAQ &&
  install -m 644 queen.1c /usr/share/games/scummvm/FOTAQ/ &&

  # Startup script, with sensible defaults
  cat > fotaq << EOF &&
#!/bin/sh
exec scummvm -f -g supereagle "\$@" -p /usr/share/games/scummvm/FOTAQ queen
EOF

  install -D -m 755 fotaq /usr/games/fotaq &&

  # Desktop menu entry
  cat > fotaq.desktop << EOF &&
[Desktop Entry]
Type=Application
Name=Flight of the Amazon Queen
Comment=$SHORT
Exec=fotaq
Icon=scummvm
Categories=Game;AdventureGame;
EOF

  install -D -m644 fotaq.desktop /usr/share/applications/fotaq.desktop &&

  gather_docs readme.txt

) > $C_FIFO 2>&1
