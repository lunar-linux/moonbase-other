(

  patch_it $SOURCE2 0 &&

  sedit "s:\$(OBJECTS) \$(LIBS):\$(OBJECTS) \$(LIBS) -lpthread:" plugins/plugin-inc.mak.in &&

  default_build

) > $C_FIFO 2>&1
