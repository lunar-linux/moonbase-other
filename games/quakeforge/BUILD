(

  OPTS+=" --disable-debug"

  patch_it $SOURCE2 1 &&
  patch_it $SOURCE3 0 &&
  patch_it $SOURCE4 0 &&
  default_game_build

) > $C_FIFO 2>&1
