(

  default_build &&
  
  if ! [ -d "/usr/share/icons" ]; then
       mkdir -p /usr/share/icons
  fi                                                        &&
  
  cp -p $SOURCE_DIRECTORY/icons/*.xpm /usr/share/icons 
  
) > $C_FIFO 2>&1
