(
  cd $SOURCE_DIRECTORY                    &&
  sedit 's/usr.local/usr/' Makefile       &&
  sedit 's/= man/= share\/man/' Makefile  &&
  sedit 's/ucb/bin/' Makefile             &&
  sedit 's/= termlib/= ncurses/' Makefile &&
  make                                    &&
  prepare_install                         &&
  make install                           

) > $C_FIFO 2>&1
