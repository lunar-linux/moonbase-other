(

rm -rf lib &&
sedit 's@\.\/lib\:@@' phun &&
prepare_install &&
mkdir -p /opt/games/Phun &&
cp -af * /opt/games/Phun &&
rm -rf /opt/games/Phun/old.libraries

  # Desktop menu entry
  cat > ${MODULE}.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=Phun
Comment=A fun 2D physics sandbox
Exec=/opt/games/Phun/phun.bin
Icon=/opt/games/Phun/textures/phun.png
Categories=Game;
EOF

  install -D -m644 ${MODULE}.desktop /usr/share/applications/${MODULE}.desktop 

) > $C_FIFO 2>&1
