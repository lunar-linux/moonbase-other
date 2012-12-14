(

  sedit "s:/usr/local:/usr:" Makefile  &&
  sedit "s:)/bin:)/games:"   Makefile  &&
  sedit "s:/share/pingus:/share/games/pingus:" Makefile  &&
  sedit "s:man1:man6:" Makefile &&

  # C++11 patch
  sedit "s/VERSION/ VERSION/" src/pingus/pingus_main.cpp &&
  sedit "s/VERSION/ VERSION /" src/pingus/screens/pingus_menu.cpp &&

  default_build &&

  install -Dm0644 $SCRIPT_DIRECTORY/pingus.desktop /usr/share/applications/pingus.desktop

) > $C_FIFO 2>&1
