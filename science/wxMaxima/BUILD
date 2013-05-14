
  sedit "s:zh_CN::" Makefile.am locales/Makefile.am &&
  aclocal  &&
  autoconf &&
  automake &&

  default_build &&

    # Desktop menu entry
  cat > ${MODULE}.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=wxMaxima
Comment=A computer algebra system
Exec=/usr/bin/wxmaxima
Icon=/usr/share/wxMaxima/wxmaxima.png
Categories=Science;Application;;
EOF

  install -D -m644 ${MODULE}.desktop /usr/share/applications/${MODULE}.desktop
