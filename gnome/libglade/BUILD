(

  # Jon says:
  # Because of recent changes in the gnome-db API, both need 
  # --disable-gnome-db on ./configure in order to compile

  if [ -z "$DISPLAY" ]
  then
  	export GTKDOC=false
	message "An X display was not found, disabling gtk-doc generation."
	message "If you want gtk-doc generation then relin the module in a"
	message "console with access to your X window server."
  fi

  ./configure  --prefix=/usr       \
               --disable-gnomedb   &&
  make                             &&
  prepare_install                  &&
  make    install                  &&
  rm    -rf  /usr/include/glade    &&
  ln    -sf  libglade-1.0/glade /usr/include/glade    

) > $C_FIFO 2>&1
