(
  export ESDL_PATH=/usr/lib/esdl
 
  make &&
  prepare_install &&
  
  mkdir -p /usr/share/wings3d &&
  cp -R * /usr/share/wings3d &&
  
  cp $SCRIPT_DIRECTORY/wings3d /usr/bin &&
  chown root.root /usr/bin/wings3d  

) > $C_FIFO 2>&1 
