(

  cp $SCRIPT_DIRECTORY/Makefile $SOURCE_DIRECTORY &&
  cp $SOURCE_CACHE/$SOURCE2 $SOURCE_DIRECTORY &&
  bunzip2 $SOURCE2 &&

  prepare_install                    &&
  make    install                    &&
  install pysol_24.pyc /usr/share/games/pysol/4.81/

) > $C_FIFO 2>&1
