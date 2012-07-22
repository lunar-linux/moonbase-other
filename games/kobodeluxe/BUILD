(
  # avoid collision with glibc symbols
  sedit 's/pipe1/pipeone/g' enemies.h enemy.cpp &&
  sedit 's/pipe2/pipetwo/g' enemies.h enemy.cpp &&

  OPTS+=" --sharedstatedir=/var/games" &&

  # the old const char issue...
  CXXFLAGS+=" -fpermissive" &&

  default_game_build &&

  # install desktop file and icons
  tar xf $SOURCE_DIRECTORY/icons.tar.gz &&
  install -Dm0644 icons/KDE/kobo-deluxe.desktop /usr/share/applications/kobo-deluxe.desktop &&
  cd icons/KDE/icons/ &&
  ls | xargs -I% install -Dm0644 %/kobodl.png /usr/share/icons/hicolor/%/apps/kobodl.png

) > $C_FIFO 2>&1
