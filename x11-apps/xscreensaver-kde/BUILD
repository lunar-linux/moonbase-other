(

  # Enable gtk support
  OPTS="$OPTS --without-motif --without-gtk --without-pixbuf --with-xml"

  # Enable locking abilities of xscreensaver
  OPTS="$OPTS --enable-locking"
  
  default_build &&

  # KDE seems to enjoy having this symlink
  if module_installed "kde3" ; then
    ln -sf /usr/share/control-center/screensavers /usr/lib/xscreensaver/config
  fi 

) > $C_FIFO 2>&1
