(

  prepare_install &&

  ./install-kst

  # Desktop menu entry
  cat > ${MODULE}.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=KST
Comment=real-time large-dataset viewing and plotting tool
Exec=//usr/bin/kst2
Icon=/usr/share/doc/kst/docbook/kst/Icon-kst-datamanager.png
Categories=Qt;KDE;Science;
EOF

  install -D -m644 ${MODULE}.desktop /usr/share/applications/${MODULE}.desktop

) > $C_FIFO 2>&1
