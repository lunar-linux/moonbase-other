( 
  if module_is_expired $MODULE && [ "$VERSION" != "`installed_version $MODULE`" ] ; then
        set_module_config OLD_VER "`installed_version $MODULE`"
  fi &&
  
  # This should always be just a link
  rm -rf /usr/lib/firefox-$VERSION/plugins

  MOZILLA_HOME=/usr/lib/$MODULE-$VERSION 
  
  MOZ_EXTENSIONS="cookie,xml-rpc,xmlextras,pref,transformiix,universalchardet,webservices,permissions,spellcheck"

  if in_depends $MODULE heimdal ; then
	MOZ_EXTENSIONS="${MOZ_EXTENSIONS},auth"
  else
	MOZ_EXTENSIONS="${MOZ_EXTENSIONS},-auth"
  fi &&

  export MOZ_FREETYPE2="no"
  export MOZ_PANGO="yes"
  export MOZ_CO_PROJECT=browser
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
    --enable-single-profile        \
    --enable-application=browser   \
    --enable-default-toolkit=gtk2  \
    --enable-optimize="$CFLAGS"    \
    --enable-xft	\
    --enable-reorder    \
    --enable-cpp-rtti   \
    --enable-crypto     \
    --enable-strip      \
    --enable-strip-libs \
    --enable-canvas     \
    --enable-svg        \
    --enable-svg-renderer=cairo  \
    --enable-xterm-updates       \
    --enable-official-branding   \
    --disable-debug     \
    --disable-tests     \
    --disable-installer \
    --disable-pedantic  \
    --disable-mailnews  \
    --disable-logging	\
    --disable-accessibility	\
    --disable-ldap	\
    --disable-profilesharing	\
    --disable-mathml	\
    $OPTS               &&
              
    default_make	&&

    # Put some important headers in place
    mkdir -p /usr/include/firefox-$VERSION/nss &&
    cp -Lf dist/private/nss/*.h dist/public/nss/*.h \
    		/usr/include/firefox-$VERSION/nss &&

    # Install the plugins in the right directories
    mkdir -p /opt/lunar/plugins		&&
    for plugin in `ls /usr/lib/firefox-$VERSION/plugins`; do
	 `install -m755 /usr/lib/firefox-$VERSION/plugins/$plugin /opt/lunar/plugins`; done  &&
    
    rm -rf $FIREFOX_HOME/lib/firefox-$VERSION/plugins &&
    ln -snf /opt/lunar/plugins /usr/lib/firefox-$VERSION/plugins &&

    # Now the .desktop file and the icon
    mkdir -p /usr/share/applications /usr/share/pixmaps &&
    install -m644 $SCRIPT_DIRECTORY/firefox.desktop /usr/share/applications &&
    # please, dont just let the lin fail because /usr/share/pixmaps/firefox.xpm is an existing symlink...
    rm -f /usr/share/pixmaps/firefox.xpm &&
    install -m644 $MOZILLA_HOME/icons/default.xpm /usr/share/pixmaps/firefox.xpm &&

    # Make firefox use its own icon

    rm -rf $FIREFOX_HOME/lib/$FFOX_LIBDIR/chrome/icons &&
    mkdir -p $FIREFOX_HOME/lib/$FFOX_LIBDIR/chrome/icons/default &&
    ln -snf $FIREFOX_HOME/lib/$FFOX_LIBDIR/icons/default.xpm \
        $FIREFOX_HOME/lib/$FFOX_LIBDIR/chrome/icons/default/default.xpm

) > $C_FIFO 2>&1
