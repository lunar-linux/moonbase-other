(
  sedit "s:desktopdir = .*:desktopdir = /usr/share/applications:" gtk/data/Makefile.in &&

  OPTS+=" --with-sdd1-decomp --with-jma-decomp --with-hq2x --with-netplay" &&

  cd gtk &&

  default_game_build

) > $C_FIFO 2>&1

