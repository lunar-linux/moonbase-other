(

  patch_it $SOURCE2 1 &&
  default_config &&
  
  sedit "s/\/usr\/X11R6\/include\/freetype2/\/usr\/include\/freetype2/" Makefile src/Makefile doc/Makefile doc/openi18n/Makefile doc/reference/Makefile python/Makefile termcaps/Makefile &&
  default_make                   

) > $C_FIFO 2>&1
