(

  # From http://aur.archlinux.org/packages/frogatto/frogatto/PKGBUILD
  sedit "s/ccache //g" Makefile  &&
  sedit "s/-lprofiler//g" Makefile  &&

  # From http://git.overlays.gentoo.org/gitweb/?p=proj/gamerlay.git;a=tree;f=games-arcade/frogatto
  local i  &&
  for i in `find src -name *.cpp`; do sed -i "$i" -e "s:.\/images/:/usr/share/games/frogatto/images/:g"; done  &&
  for i in `find src -name *.cpp`; do sed -i "$i" -e "s:data/:/usr/share/games/frogatto/data/:g"; done  &&
  for i in `find src -name *.cpp`; do sed -i "$i" -e "s:music/:/usr/share/games/frogatto/music/:g"; done  &&
  for i in `find src -name *.cpp`; do sed -i "$i" -e "s:music_aac/:/usr/share/games/frogatto/music_aac/:g"; done  &&
  for i in `find src -name *.cpp`; do sed -i "$i" -e "s:sounds/:/usr/share/games/frogatto/sounds/:g"; done  &&
  for i in `find src -name *.cpp`; do sed -i "$i" -e "s:sounds_wav/:/usr/share/games/frogatto/sounds_wav/:g"; done  &&
  for i in `find src -name *.cpp`; do sed -i "$i" -e "s:FreeMono.ttf:/usr/share/games/frogatto/FreeMono.ttf:g"; done  &&

  make  &&
  prepare_install  &&

  # Executable
  install -D -m755 game /usr/bin/frogatto  &&

  # Data
  mkdir -p /usr/share/games/frogatto/  &&
  cp -r data images music music_aac sounds sounds_wav *.ttf /usr/share/games/frogatto/  &&

  # Icon
  install -D -m644 images/window-icon.png /usr/share/pixmaps/$MODULE.png  &&

  # Desktop menu entry
  cat > $MODULE.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=Frogatto
Comment=$SHORT
Exec=$MODULE
Icon=$MODULE
Categories=Game;
EOF

  install -D -m644 $MODULE.desktop /usr/share/applications/$MODULE.desktop

) > $C_FIFO 2>&1
