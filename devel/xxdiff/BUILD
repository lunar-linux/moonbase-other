(

  export TMAKEPATH=/usr/share/tmake/lib/linux-g++
  export QTDIR=/opt/lunar/qt/2
  cd src                                                      &&
  tmake xxdiff.pro > Makefile                                 &&
  sedit  "s/-O2/$CFLAGS/" Makefile                            &&
  make                                                        &&
  prepare_install                                             &&
  install xxdiff /usr/bin     

) > $C_FIFO 2>&1
