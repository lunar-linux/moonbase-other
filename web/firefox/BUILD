( 
  MOZILLA_HOME=/usr/lib/$MODULE-$VERSION 
  
  OPTS="$OPTS --enable-strip --enable-strip-libs"
  OPTS="$OPTS --disable-mathml"
  OPTS="$OPTS --disable-accessibility"
  OPTS="$OPTS --disable-jsd"
  OPTS="$OPTS --enable-xft"
  OPTS="$OPTS --enable-xterm-updates"
  OPTS="$OPTS --disable-ldap"
  OPTS="$OPTS --enable-svg --enable-svg-renderer-cairo"
  OPTS="$OPTS --enable-extensions=default,-irc,-typeaheadfind"
  OPTS="$OPTS --enable-single-profile --disable-profilesharing" 

  export PKG_CONFIG_PATH=/usr/X11R6/lib/pkgconfig:/usr/lib/pkgconfig
  export MOZ_NSS_AUTOCONF=1
  export NATIVE_THEME_SUPPORT=1
  export MOZ_PHOENIX=1
  export MOZILLA_OFFICIAL=1
  export BUILD_OPT=1

  echo "$OPTS" > /tmp/mozz

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

    # Install the plugins in the right direction
    mkdir -p /opt/lunar/plugins		&&
    for plugin in `ls /usr/lib/firefox-$VERSION/plugins`; do
	 `install -m755 /usr/lib/firefox-$VERSION/plugins/$plugin /opt/lunar/plugins`; done  &&
    
    # Now the .desktop files
    mkdir -p /usr/share/applications	&&
    install -m644 $SCRIPT_DIRECTORY/firefox.desktop /usr/share/applications

) > $C_FIFO 2>&1
