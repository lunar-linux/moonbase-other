(

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
