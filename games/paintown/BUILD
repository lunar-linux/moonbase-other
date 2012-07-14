(

  # Fix compilation error:
  # build/menu/option_lives.cpp:56: error: 'sprintf' was not declared in this scope
  sedit '/globals.h"/a\#include <stdio.h>' src/menu/option_{lives,npc_buddies,speed}.cpp &&
  sedit '/lit_bitmap.h"/a\#include <stdio.h>' src/util/bitmap.cpp &&
  sedit "s:-Wall::" SConstruct &&
  sedit "s:char \* extension:const char \* extension:" src/game.cpp &&

  # Set data path
  sedit "s:\"data\":\"$MODULE_PREFIX/share/games/paintown\":" src/util/funcs.cpp &&
  sedit "s:return 'data':return '$MODULE_PREFIX/share/games/paintown':" SConstruct &&
  sedit "s:\./data/:$MODULE_PREFIX/share/games/paintown:" src/main-menu.cpp src/menu/menutest.cpp &&

  scons DATA_PATH=$MODULE_PREFIX/share/games &&

  prepare_install &&
  mkdir -p $MODULE_PREFIX/games $MODULE_PREFIX/share/games/paintown &&
  install -m755 paintown $MODULE_PREFIX/games/paintown &&
  gather_docs LICENSE TODO LEGAL README &&
  cp -ar data/* $MODULE_PREFIX/share/games/paintown/

) > $C_FIFO 2>&1
