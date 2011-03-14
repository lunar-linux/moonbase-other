(

  if ! in_depends $MODULE ncursesw ; then
    sedit "s:ncursesw:ncurses:" Makefile
  fi &&

  default_make

) > $C_FIFO 2>&1
