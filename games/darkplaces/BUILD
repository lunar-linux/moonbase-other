(

  unzip darkplacesenginesource${VERSION}.zip  &&
  cd darkplaces  &&

  make DP_FS_BASEDIR=/usr/share/games/quake1 DP_SOUND_API=ALSA \
    -f makefile cl-release sv-release  &&

  prepare_install  &&
  mkdir -p /usr/games /usr/share/games/quake1/id1  &&
  install -m755 darkplaces-glx /usr/games/darkplaces  &&
  install -m755 darkplaces-dedicated /usr/games/darkplaces-dedicated

) > $C_FIFO 2>&1
