(

  export TMAKEPATH=/usr/share/tmake/lib/linux-g++
  export QTDIR=${QT_PREFIX:-$QTDIR}  
  cd src                            &&
  tmake xxdiff.pro > Makefile       &&
  sedit  "s/-O2/$CFLAGS/" Makefile  &&
  make				    &&
  prepare_install                   &&
  cd ..                             &&
  install bin/xxdiff /usr/bin     

) > $C_FIFO 2>&1
