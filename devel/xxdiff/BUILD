(

  export TMAKEPATH=/usr/share/tmake/lib/linux-g++
  export QTDIR=/opt/lunar/qt/3
  cd src                                                      &&
  tmake xxdiff.pro > Makefile                                 &&
  sedit  "s/-O2/$CFLAGS/" Makefile                            &&
  make                                                        ||
  patch_it $SOURCE_CACHE/$SOURCE2 2	      &&
  make							      &&
  prepare_install                                             &&
  install xxdiff /usr/bin     

) > $C_FIFO 2>&1
