( 
  if module_is_expired $MODULE ; then
        set_module_config OLD_VER "`installed_version $MODULE`"
  fi &&
  
  MOZILLA_HOME=/usr/lib/$MODULE-$VERSION 
  
  MOZ_EXTENSIONS="cookie,xml-rpc,xmlextras,pref,transformiix,universalchardet,webservices,inspector"

  if in_depends gnome-vfs2 ; then
	MOZ_EXTENSIONS="${MOZ_EXTENSIONS},gnomevfs"
  fi &&

  if in_depends heimdal ; then
	MOZ_EXTENSIONS="${MOZ_EXTENSIONS},negotiateauth"
  else
	MOZ_EXTENSIONS="${MOZ_EXTENSIONS},-negotiateauth"
  fi &&

  export PKG_CONFIG_PATH=/usr/X11R6/lib/pkgconfig:/usr/lib/pkgconfig
  export MOZ_PHOENIX=1
  export MOZILLA_OFFICIAL=1
  export BUILD_OFFICIAL=1

  ./configure 		\
    --prefix=/usr	\
    --with-x            \
    --with-pthreads     \
    --with-default-mozilla-five-home=$MOZILLA_HOME \
    --with-user-appdir=".firefox"       \
    --with-system-zlib	\
    --with-system-png   \
    --with-system-jpeg  \
    --enable-extensions=${MOZ_EXTENSIONS}	\
    --enable-xft	\
    --enable-single-profile	\
    --enable-application=browser	\
    --enable-default-toolkit=gtk2       \
    --enable-reorder    \
    --enable-cpp-rtti   \
    --enable-optimize="$CFLAGS"   \
    --enable-crypto     \
    --enable-strip	\
    --enable-strip-libs \
    --enable-xterm-updates	\
    --enable-svg	\
    --enable-svg-renderer-cairo	\
    --enable-plaintext-editor-only	\
    --disable-debug     \
    --disable-tests     \
    --disable-installer \
    --disable-pedantic  \
    --disable-mailnews  \
    --disable-composer  \
    --disable-logging	\
    --disable-accessibility	\
    --disable-freetype2	\
    --disable-ldap	\
    --disable-profilesharing	\ 
    $OPTS               &&
              
    default_make	&&

    # Put some important headers in place
    install -d /usr/include/firefox-$VERSION/nss &&
    cp -Lf dist/private/nss/*.h dist/public/nss/*.h \
    		/usr/include/firefox-$VERSION/nss &&

    # Install the plugins in the right directories
    mkdir -p /opt/lunar/plugins		&&
    for plugin in `ls /usr/lib/firefox-$VERSION/plugins`; do
	 `install -m755 /usr/lib/firefox-$VERSION/plugins/$plugin /opt/lunar/plugins`; done  &&
    
    # Now the .desktop file and the icon
    install -d /usr/share/applications /usr/share/pixmaps &&
    install -m644 $SCRIPT_DIRECTORY/firefox.desktop /usr/share/applications
    # please, dont just let the lin fail because /usr/share/pixmaps/firefox.xpm is an existing symlink...
    rm -f /usr/share/pixmaps/firefox.xpm &&
    install -m644 $MOZILLA_HOME/icons/default.xpm \
		  /usr/share/pixmaps/firefox.xpm

) > $C_FIFO 2>&1
