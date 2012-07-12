(

  sedit "s:/games/:/:" configure &&

  OPTS+=" --with-setgid=games --with-configpath=/etc/${MODULE}/ --with-varpath=/var/games/${MODULE}/"   &&

  default_game_build  &&

  if in_depends "$MODULE" "SDL"; then
     install -Dm0644 lib/xtra/icon/angband-sdl.desktop /usr/share/applications/
  fi &&

  if in_depends "$MODULE" "libX11"; then
     install -Dm0644 lib/xtra/icon/angband-x11.desktop /usr/share/applications/
  fi &&

  if in_depends "$MODULE" "glade2"; then
     install -Dm0644 lib/xtra/icon/angband-gtk.desktop /usr/share/applications/
  fi

) > $C_FIFO 2>&1
