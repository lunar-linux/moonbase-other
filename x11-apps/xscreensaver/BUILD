(

  # Enable/Disable certain opts based on the use of gtk
  if [ "$USE_GTK" = "y" ] ; then
    OPTS="$OPTS --without-motif --with-gtk --with-xml"
  else
    OPTS="$OPTS --with-motif --without-gtk --without-gdk-pixbuff"
  fi

  # Enable locking abilities of xscreensaver
  OPTS="$OPTS --enable-locking"
  
  default_build &&

  # KDE seems to enjoy having this symlink
  if module_installed "kde3" ; then
    ln -s /usr/share/control-center/screensavers /usr/lib/xscreensaver/config
  fi 

) > $C_FIFO 2>&1
