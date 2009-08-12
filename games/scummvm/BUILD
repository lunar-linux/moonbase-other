( 

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  ./configure $OPTS  &&
  make               &&
  prepare_install    &&

  install scummvm /usr/games/  

) > $C_FIFO 2>&1
