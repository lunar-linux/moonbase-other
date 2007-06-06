(

  patch_it $SOURCE2 0 &&
  cp /usr/share/automake/config.sub $SOURCE_DIRECTORY &&
  default_config &&
  sedit "s/--mode=link \$(CCLD)/--mode=link \$(CXXLD)/g" Makefile &&
  default_make &&
  ldconfig

) > $C_FIFO 2>&1
