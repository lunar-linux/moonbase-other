(
  export ESDL_PATH=/usr/lib/esdl
 
  make &&
  prepare_install &&
  
  mkdir -p /usr/share/wings3d &&
  cp -R * /usr/share/wings3d &&
  
  install -m 0775 -o root -g root $SCRIPT_DIRECTORY/wings3d /usr/bin

) > $C_FIFO 2>&1 
