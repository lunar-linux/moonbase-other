( 

  patch_it $SOURCE_CACHE/$SOURCE2 1                &&
  make                                             &&
  prepare_install                                  &&
  install -m 755 -o root bplay_gramo  /usr/bin     &&
  install -m 755 -o root brec_gramo   /usr/bin     &&
  install -m 755 -o root gramofile    /usr/bin    

) > $C_FIFO 2>&1
