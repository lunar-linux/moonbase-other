(

  unset CPP &&
  CFLAGS+=" `pkg-config glib-2.0 --cflags`" &&

  sedit  "s:/usr/local:/usr:"      settings.mk &&
  sedit  "s:/share:/share/games:"  settings.mk &&
  sedit  "s:/bin:/games:"          settings.mk &&

  default_game_build &&

  install -m644 icons/frozen-bubble-icon-16x16.png /usr/share/icons/hicolor/16x16/apps/frozen-bubble.png &&
  install -m644 icons/frozen-bubble-icon-32x32.png /usr/share/icons/hicolor/32x32/apps/frozen-bubble.png &&
  install -m644 icons/frozen-bubble-icon-48x48.png /usr/share/icons/hicolor/48x48/apps/frozen-bubble.png &&
  install -m644 icons/frozen-bubble-icon-64x64.png /usr/share/icons/hicolor/64x64/apps/frozen-bubble.png &&

  # Desktop menu entry
  cat > $MODULE.desktop << EOF &&
[Desktop Entry]
Type=Application
Name=Frozen Bubble
Comment=$SHORT
Exec=$MODULE
Icon=$MODULE
Categories=Game;ArcadeGame;
EOF

  install -D -m644 $MODULE.desktop /usr/share/applications/$MODULE.desktop &&

  if [[ -x /usr/bin/gtk-update-icon-cache ]] ; then
    gtk-update-icon-cache -f /usr/share/icons/hicolor/
  fi

) > $C_FIFO 2>&1
