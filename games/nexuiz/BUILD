(

  # data/common-spog.pk3 was group-writable
  chmod 644 data/* havoc/*  &&

  mv Docs docs  &&
  cd sources  &&
  unzip enginesource????????.zip  &&
  cd darkplaces  &&
  cp ChangeLog $SOURCE_DIRECTORY  &&

  make \
    CPUOPTIMIZATIONS="${CFLAGS}"            \
    DP_LINK_TO_LIBJPEG=1                    \
    DP_PRELOAD_DEPENDENCIES=1               \
    DP_FS_BASEDIR=/usr/share/games/$MODULE  \
    -f makefile cl-release sv-release  &&

  prepare_install  &&
  mkdir -p /usr/games /usr/share/games/$MODULE  &&
  install -m755 darkplaces-glx /usr/games/$MODULE  &&
  install -m755 darkplaces-dedicated /usr/games/${MODULE}-dedicated  &&
  cp -a $SOURCE_DIRECTORY/{data,havoc} /usr/share/games/$MODULE/  &&

  # Desktop menu entry
  cat > ${MODULE}.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=Nexuiz
Comment=$SHORT
Exec=$MODULE
Icon=$MODULE
Categories=Game;ActionGame;
EOF

  install -D -m644 ${MODULE}.desktop /usr/share/applications/${MODULE}.desktop  &&
  install -D -m644 ${MODULE}.xpm /usr/share/pixmaps/${MODULE}.xpm

) > $C_FIFO 2>&1
