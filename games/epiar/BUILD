(

  unpack $SOURCE2     &&
  cd openal/linux     &&

  default_config      &&

  default_make        &&
  
  devoke_installwatch &&
  cd ../..            &&
  
  sedit "s:^CFLAGS=:CFLAGS=$CFLAGS :" Makefile
  
  make                &&
  invoke_installwatch &&
  
  mkdir -p /usr/games/epiar
  cp -a data audio plugins epiar /usr/games/epiar/

) > $C_FIFO 2>&1
