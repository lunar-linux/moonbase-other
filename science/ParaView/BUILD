(

  OPTS+=" -DBUILD_SHARED_LIBS=ON" &&

  default_cmake_build

  install ../Documentation/ParaViewLogo.png /usr/share/icons &&

#   Desktop menu entry
  cat > ${MODULE}.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=ParaView
Comment=data analysis and visualization
Exec=/usr/bin/paraview
Icon=/usr/share/icons/ParaViewLogo.png
Categories=Qt;KDE;Science;
EOF

  install -D -m644 ${MODULE}.desktop /usr/share/applications/${MODULE}.desktop

) > $C_FIFO 2>&1
