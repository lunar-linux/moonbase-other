(

  unzip nexuizenginesource????????.zip &&
  cd darkplaces &&
  sedit "s:^OPTIM_RELEASE=.*$:OPTIM_RELEASE=$CFLAGS:" makefile.inc &&
  make -f makefile cl-release sv-release &&
  prepare_install &&
  mkdir -p /usr/games /usr/share/games/$MODULE &&
  install -m755 nexuiz-glx /usr/share/games/$MODULE/nexuiz-glx &&
  install -m755 nexuiz-dedicated /usr/share/games/$MODULE/nexuiz-dedicated &&
  cp -a $SOURCE_DIRECTORY/data /usr/share/games/$MODULE/ &&
  install -m755 $SCRIPT_DIRECTORY/nexuiz /usr/games/ &&
  install -m755 $SCRIPT_DIRECTORY/nexuiz-ded /usr/games/

) > $C_FIFO 2>&1
