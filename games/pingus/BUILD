(

  prepare_install     &&
  scons  prefix=/usr  &&
  mkdir -p /usr/share/games/pingus     &&
  cp -r data /usr/share/games/pingus/  &&
  cp -f build/pingus /usr/games/       &&
  cp $SCRIPT_DIRECTORY/pingus.desktop /usr/share/applications/

) > $C_FIFO 2>&1
