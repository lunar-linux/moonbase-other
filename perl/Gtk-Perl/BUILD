(

  perl  Makefile.PL  &&
  make               
  mv Gtk/*.o Gtk/xs/ &&
  make
  mv Gtk/*.o Gtk/build/ &&
  make               
  mv GdkImlib/*.o GdkImlib/xs/ &&
  make               
  mv GdkPixbuf/*.o GdkPixbuf/xs/ &&
  make               
  mv GdkPixbuf/*.o GdkPixbuf/build/ &&
  make               
  mv GtkXmHTML/*.o GtkXmHTML/xs/ &&
  make               
  mv GtkXmHTML/*.o GtkXmHTML/build/ &&
  make               
  mv Gnome/*.o Gnome/xs/ &&
  make               
  mv Gnome/*.o Gnome/build/ &&
  make               
  mv Glade/*.o Glade/xs/ &&
  make               
  mv Glade/*.o Glade/build/ &&
  make               
  prepare_install    &&
  make    install

) > $C_FIFO 2>&1
