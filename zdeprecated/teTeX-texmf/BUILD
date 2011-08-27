(
 
  prepare_install &&
  
  if [ -d /usr/share/texmf ]; then
        rm -rf /usr/share/texmf;
  fi &&

  mkdir -p /usr/share/texmf  &&
  cp -a $SOURCE_DIRECTORY/* /usr/share/texmf
 
) > $C_FIFO 2>&1
