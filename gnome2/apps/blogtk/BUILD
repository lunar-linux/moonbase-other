(
  default_make &&
  install -m 755 -d /usr/share/pixmaps/ &&
  cp /usr/share/blogtk/blogtk-logo.png /usr/share/pixmaps/ &&
  sed -i -e "s:Icon=blogtk-icon.svgz:Icon=blogtk-logo.png:" /usr/share/applications/blogtk.desktop
) > $C_FIFO 2>&1
