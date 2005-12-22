(

  # Disable gtk support
  OPTS="$OPTS --without-motif --without-gtk --without-pixbuf --with-xml"

  # Enable locking abilities of xscreensaver
  OPTS="$OPTS --enable-locking"
  
  default_build &&

  rm -fR /xscreensaver

) > $C_FIFO 2>&1
