(

  INST_DIR="/usr/games/${MODULE}"

  # Fix a filename
  mv "data1/scripts/maps/tca-titan2k8 .rscript" data1/scripts/maps/tca-titan2k8.rscript &&

  # Remove some pre-compiled libs
  rm {arena,data1}/game.so  &&

  cd source              &&
  default_make           &&

  if [ ! -d $INST_DIR ]; then
    mkdir -p $INST_DIR
  fi  &&

  cd $SOURCE_DIRECTORY
  # opengl seems more stable, but may vary
  install -D -m755 crx ${INST_DIR}/     &&
  install -D -m755 crx.sdl ${INST_DIR}/ &&
  install -D -m755 crded ${INST_DIR}/   &&

  # Data files (can contain spaces)
  find arena botinfo data1 -type f | while read i ; do
    install -D -m644 "$i" "${INST_DIR}/$i"
  done &&

  # Desktop entry
  install -D -m644 aa.png /usr/share/pixmaps/${MODULE}.png &&
#  install -D -m644 $startdir/src/${pkgname}.desktop /usr/share/applications/${MODULE}.desktop &&
  prepare_install &&

  cp -R $SOURCE_DIRECTORY/* $INST_DIR &&

  gather_docs docs

) > $C_FIFO 2>&1
