( 
  MOZILLA_HOME=/usr/lib/$MODULE-$VERSION 
  
  OPTS="$OPTS --enable-strip --enable-strip-libs"
  OPTS="$OPTS --enable-application=browser"
  OPTS="$OPTS --with-system-zlib --with-system-png --with-system-jpeg"
  OPTS="$OPTS --disable-mathml"
  OPTS="$OPTS --disable-accessibility"
  OPTS="$OPTS --disable-jsd"
  OPTS="$OPTS --enable-xft --disable-freetype2"
  OPTS="$OPTS --enable-xterm-updates"
  OPTS="$OPTS --disable-ldap"
  OPTS="$OPTS --enable-svg --enable-svg-renderer-cairo"
  OPTS="$OPTS --enable-extensions=default,-irc,-typeaheadfind"
  OPTS="$OPTS --enable-single-profile --disable-profilesharing" 

  export PKG_CONFIG_PATH=/usr/X11R6/lib/pkgconfig:/usr/lib/pkgconfig
  export MOZ_PHOENIX=1
  export MOZILLA_OFFICIAL=1
  export BUILD_OFFICIAL=1

  ./configure \
    --prefix=/usr	\
    --with-x            \
    --with-pthreads     \
    --enable-reorder    \
    --enable-cpp-rtti   \
    --enable-optimize="$CFLAGS"   \
    --with-default-mozilla-five-home=$MOZILLA_HOME \
    --disable-debug     \
    --disable-tests     \
    --disable-installer \
    --disable-pedantic  \
    --disable-mailnews  \
    --disable-composer  \
    --enable-crypto     \
    --disable-static	\
    --disable-logging	\
    --with-gtk2		\
    --enable-default-toolkit=gtk2	\
    --disable-toolkit-gtk	\
    --with-user-appdir=".firefox"	\
    $OPTS               &&
              
    default_make	&&

    # Put some important headers in place
    install -d /usr/include/firefox-1.0/nss &&
    cp -Lf dist/private/nss/*.h dist/public/nss/*.h \
    		/usr/include/firefox-1.0/nss &&

    # Install the plugins in the right direction
    mkdir -p /opt/lunar/plugins		&&
    for plugin in `ls /usr/lib/firefox-$VERSION/plugins`; do
	 `install -m755 /usr/lib/firefox-$VERSION/plugins/$plugin /opt/lunar/plugins`; done  &&
    
    # Now the .desktop file and the icon
    install -d /usr/share/applications /usr/share/pixmaps &&
    install -m644 $SCRIPT_DIRECTORY/firefox.desktop /usr/share/applications
    install -m644 $MOZILLA_HOME/icons/default.xpm \
		  /usr/share/pixmaps/firefox.xpm

) > $C_FIFO 2>&1
