(

  unpack $SOURCE2     &&
  cd openal/linux     &&
  default_config      &&
  make                &&
  prepare_install     &&
  make install        &&
  
  devoke_installwatch &&
  cd ../..            &&
  
  sedit "s:^CFLAGS=:CFLAGS=$CFLAGS :" Makefile
  
  make                &&
  invoke_installwatch &&
  
  mkdir -p /usr/lib/epiar
  cp -a data audio plugins epiar /usr/lib/epiar/
  cp $SCRIPT_DIRECTORY/epiar /usr/bin

) > $C_FIFO 2>&1
