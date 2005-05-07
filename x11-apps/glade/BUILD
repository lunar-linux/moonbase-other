(

  # Jon says:
  # Because of recent changes in the gnome-db API, both need 
  # --disable-gnome-db on ./configure in order to compile

  ./configure  --prefix=/usr       \
               --disable-gnome-db  &&
  make                             &&
  prepare_install                  &&
  make    install

) > $C_FIFO 2>&1
