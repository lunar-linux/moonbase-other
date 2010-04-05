(
 
  cd ConvertAll &&
  prepare_install &&
  python install.py -p /usr &&


  # Desktop icon
  install -D -m644 icons/convertall_med.png /usr/share/pixmaps/${MODULE}.png  &&

  # Desktop menu entry
  cat > ${MODULE}.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=ConvertAll
Comment=Qt based unit converter
Exec=$MODULE
Icon=$MODULE
Categories=Application;KDE;Utility;
EOF

  install -D -m644 ${MODULE}.desktop /usr/share/applications/${MODULE}.desktop

) > $C_FIFO 2>&1
