(

  sedit "s:/usr/local:/usr:" Makefile  &&
  sedit "s:)/bin:)/games:"   Makefile  &&
  sedit "s:/share/pingus:/share/games/pingus:" Makefile  &&
  sedit "s:man1:man6:" Makefile &&

  default_build &&

  install -Dm0644 $SCRIPT_DIRECTORY/pingus.desktop /usr/share/applications/pingus.desktop

) > $C_FIFO 2>&1
