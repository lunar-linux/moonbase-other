(
  OPTS+=" --with-sdd1-decomp --with-jma-decomp --with-hq2x --with-netplay" &&

  # the only files installed are *.desktop and icon/*
  # these belong to /usr/share
  OPTS+=" --datadir=/usr/share" &&
  cd gtk &&

  default_game_build

) > $C_FIFO 2>&1

