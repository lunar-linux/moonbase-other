(

  # Enable/Disable certain opts based on the use of gtk
  if [ "$USE_GTK" = "y" ] ; then
    OPTS="$OPTS --without-motif --with-gtk --with-xml"
  else
    OPTS="$OPTS --with-motif --without-gtk --without-gdk-pixbuff"
  fi
  
  ./configure	--build=$BUILD                         \
            	--prefix=$MODULE_PREFIX                \
           	--mandir=$MODULE_PREFIX/share/man      \
                --x-libraries=/usr/X11R6/lib           \
                --x-includes=/usr/X11R6/include        \
                --enable-locking                       \ 
                # All "--with-*" options are on by default, but are 
                # only enabled if ./configure sees it is possible
		$OPTS                                  &&
  
  default_make &&

  # KDE seems to enjoy having this symlink
  if module_installed "kde3" ; then
    ln -s /usr/share/control-center/screensavers /usr/lib/xscreensaver/config
  fi 

) > $C_FIFO 2>&1
