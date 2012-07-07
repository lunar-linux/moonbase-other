(
  patch_it $SOURCE2 0 &&
  
  if in_depends $MODULE lua; then
     sedit 's/WITH_LUA=shipped/WITH_LUA=system/' Makefile
  fi &&

  make $OPTS &&
  prepare_install &&
  install -m755 build/release/bin/gringo /usr/bin

) > $C_FIFO 2>&1
