(

  # Jon says:
  # Because of recent changes in the gnome-db API, both need 
  # --disable-gnome-db on ./configure in order to compile

  ./configure  --prefix=/usr       \
               --disable-gnomedb   &&
  make                             &&
  prepare_install                  &&
  make    install                  &&
  rm    -rf  /usr/include/glade    &&
  ln    -sf  libglade-1.0/glade /usr/include/glade    

) > $C_FIFO 2>&1
