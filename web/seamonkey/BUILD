(
  if module_is_expired $MODULE && [ "$VERSION" != "`installed_version $MODULE`" ]; then
        set_module_config OLD_VER "`installed_version $MODULE`"
  fi &&

  # This should always be just a link
  rm -rf /usr/lib/seamonkey-$VERSION/plugins &&

  MOZILLA_HOME=/usr/lib/$MODULE-$VERSION

  MOZ_EXTENSIONS="default,xmlextras,xforms,webservices,universalchardet,transformiix,tasks,schema-validation,reporter,cookie,cview,datetime,finger,p3p,permissions,spellcheck,irc,wallet,-gnomevfs"

  if in_depends $MODULE heimdal ; then
        MOZ_EXTENSIONS="${MOZ_EXTENSIONS},auth"
  else
        MOZ_EXTENSIONS="${MOZ_EXTENSIONS},-auth"
  fi &&

  # This hack added to fix a gtk+-2/pango/atk update that broke seamonkey. This should be removed in the future.
  sedit "s/(MOZ_GTK2_LIBS)/(MOZ_GTK2_LIBS) -lX11 -lXrender/" layout/build/Makefile.in &&

  export MOZ_FREETYPE2="no"
  export MOZ_PANGO="yes"
  export MOZ_CO_PROJECT=suite
  export MOZILLA_OFFICIAL=1
  export BUILD_OFFICIAL=1
  export PKG_CONFIG_PATH=/usr/X11R6/lib/pkgconfig:/usr/lib/pkgconfig
  export MOZ_NSS_AUTOCONF=1
  export NATIVE_THEME_SUPPORT=1
  export MOZILLA_USE_XFT=1
  export BUILD_OPT=1

  ./configure           \
    --prefix=/usr       \
    --with-x            \
    --with-pthreads     \
    --with-default-mozilla-five-home=$MOZILLA_HOME \
    --with-user-appdir=.seamonkey     \
    --with-system-zlib  \
    --with-system-png   \
    --with-system-jpeg  \
    --enable-extensions=${MOZ_EXTENSIONS}       \
    --enable-application=suite     \
    --enable-default-toolkit=gtk2  \
    --enable-optimize="$CFLAGS"    \
    --enable-xft        \
    --enable-reorder    \
    --enable-cpp-rtti   \
    --enable-cpp-exceptions \
    --enable-crypto     \
    --enable-strip      \
    --enable-strip-libs \
    --enable-canvas     \
    --enable-svg        \
    --enable-svg-renderer=cairo  \
    --enable-system-cairo        \
    --enable-xterm-updates       \
    --disable-debug     \
    --disable-tests     \
    --disable-installer \
    --disable-pedantic  \
    --disable-logging   \
    --disable-accessibility     \
    --disable-ldap      \
    --disable-profilesharing    \
    --enable-mathml     \
    --disable-xinerama \
    --disable-gnomeui  \
    --enable-glitz      \
    --disable-pango \
    --disable-gnomevfs \
    $OPTS               &&

  default_make        &&

  # Put some important headers in place
  mkdir -p /usr/include/seamonkey-$VERSION/nss &&
  cp -Lf dist/private/nss/*.h dist/public/nss/*.h /usr/include/seamonkey-$VERSION/nss &&

  # Install the plugins in the right directories
  mkdir -p /opt/lunar/plugins         &&
  for plugin in `ls /usr/lib/seamonkey-$VERSION/plugins`; do
       `install -m755 /usr/lib/seamonkey-$VERSION/plugins/$plugin /opt/lunar/plugins`; done  &&

  rm -rf /usr/lib/seamonkey-$VERSION/plugins &&
  ln -snf /opt/lunar/plugins /usr/lib/seamonkey-$VERSION/plugins &&

  # Now the .desktop file and the icon
  mkdir -p /usr/share/applications /usr/share/pixmaps &&
  install -m644 $SCRIPT_DIRECTORY/seamonkey.desktop /usr/share/applications &&
  # please, dont just let the lin fail because /usr/share/pixmaps/seamonkey.xpm is an existing symlink...
  rm -f /usr/share/pixmaps/seamonkey.xpm &&
  install -m644 $MOZILLA_HOME/chrome/icons/default/main-window.xpm /usr/share/pixmaps/seamonkey.xpm

) > $C_FIFO 2>&1
