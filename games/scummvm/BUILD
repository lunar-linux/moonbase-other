(

  ./configure $OPTS  &&
  make               &&
  prepare_install    &&

  install -Dm 755 scummvm /usr/games/scummvm  &&
  install -Dm 644 dists/scummvm.6 /usr/share/man/man6/scummvm.6  &&
  install -Dm 644 icons/scummvm.xpm /usr/share/icons/hicolor/32x32/apps/scummvm.xpm  &&

  if [ -x /usr/bin/gtk-update-icon-cache ] ; then
    gtk-update-icon-cache -f /usr/share/icons/hicolor/
  fi

) > $C_FIFO 2>&1
