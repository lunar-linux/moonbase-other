(

  sedit "s:/usr/local:/usr:" Makefile  &&
  sedit "s:)/bin:)/games:"   Makefile  &&
  sedit "s:/share/pingus:/share/games/pingus:" Makefile  &&
  prepare_install     &&
  scons  prefix=/usr  &&
  mkdir -p /usr/share/games/pingus  &&
  make install                      &&
  cp $SCRIPT_DIRECTORY/pingus.desktop /usr/share/applications/

) > $C_FIFO 2>&1
