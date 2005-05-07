(

  export ESDL_PATH=/usr/lib/esdl
  make &&
  prepare_install &&
  mkdir -p /usr/share/wings &&
  cp -R * /usr/share/wings &&
  install -m 0775 -o root -g root $SCRIPT_DIRECTORY/wings /usr/bin

) > $C_FIFO 2>&1 
