(
  if is_depends libpng; then
    OPTS="$OPTS WITH_PNG=1"
  fi

  make PREFIX=/usr \
       WITH_ZLIB=1 \
       WITH_SDL=1 \
       MANUAL_CONFIG=1 \
       UNIX=1 \
       WITH_NETWORK=1 \
       INSTALL=1 \
       USE_HOMEDIR=1 \
       PERSONAL_DIR=.openttd \
       DATA_DIR=share/games/openttd \
       BINARY_DIR=games \
       $OPTS  &&
   
  prepare_install  &&

  # make install is experimental so we do this manually
  GAMEDATA=/usr/share/games/openttd
  mkdir -p ${GAMEDATA}/{data,lang,scenario,scripts}  &&
  install -m 0644 data/* ${GAMEDATA}/data/           &&
  install -m 0644 lang/*.lng ${GAMEDATA}/lang/       &&
  install -m 0644 scripts/* ${GAMEDATA}/scripts/     &&
  install -m 0755 openttd /usr/games/

#  install -m 0644 scenario/* ${GAMEDATA}/scenario/   &&

  gather_docs docs changelog.txt readme.txt
    
) > $C_FIFO 2>&1
