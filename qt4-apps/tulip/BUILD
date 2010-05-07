(

  . /etc/profile.d/qt4.rc &&

  if module_installed teTeX ; then
   export PDFXMLTEX="pdfetex"
  fi &&

  default_build &&

  # Desktop menu entry
  cat > ${MODULE}.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=Tulip
Comment=Graph visualization software
Exec=$QTDIR/bin/tulip
Icon=$QTDIR/lib/tlp/bitmaps/logotulip.jpg
Categories=Qt;KDE;Science;
EOF
                                                                                                                                                                                        
  install -D -m644 ${MODULE}.desktop /usr/share/applications/${MODULE}.desktop

) > $C_FIFO 2>&1
