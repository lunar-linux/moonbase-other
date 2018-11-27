(

  ./configure --prefix=/usr/bin &&
  ./install.tcl &&

  sedit "s:cdrecord:wodim:g" tkdvd-install.sh &&
  sedit "s:mkisofs:genisoimage:g" tkdvd-install.sh &&

  prepare_install &&

  install -m 755 tkdvd-install.sh /usr/bin/tkdvd &&
  install -m 755 -d /usr/share/pixmaps/ &&
  install -m 644 icons/*.png /usr/share/pixmaps/

  # Desktop menu entry
  cat > ${MODULE}.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=tkdvd
Comment=GUI to dvd+rw-tools and cdrecord
Exec=/usr/bin/tkdvd
Icon=/usr/share/pixmaps/tkdvd-2-32.png
Categories=Qt;KDE;Utility;
EOF

  install -D -m644 ${MODULE}.desktop /usr/share/applications/${MODULE}.desktop

) > $C_FIFO 2>&1
