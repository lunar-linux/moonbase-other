(
  cd openal/linux     &&

  default_config      &&

  default_make        &&
  
  devoke_installwatch &&
  cd ../..            &&
  
  sedit "s:^CFLAGS=:CFLAGS=$CFLAGS :" Makefile.linux
  sedit "s:-pg::"                     Makefile.linux
  
  make -f Makefile.linux  &&
  invoke_installwatch     &&
  
  
  mkdir -p /usr/games/epiar
  cp -a missions *.eaf epiar /usr/games/epiar/

) > $C_FIFO 2>&1
