(
  if module_is_expired $MODULE && [ "$VERSION" != "`installed_version $MODULE`" ]; then
        set_module_config OLD_VER "`installed_version $MODULE`"
  fi &&

  # This should always be just a link
  rm -rf /usr/lib/firefox-$VERSION/plugins &&

  MOZILLA_HOME=/usr/lib/$MODULE-$VERSION

  MOZ_EXTENSIONS="default,xforms"

  if in_depends $MODULE heimdal ; then
        MOZ_EXTENSIONS="${MOZ_EXTENSIONS},auth"
  else
        MOZ_EXTENSIONS="${MOZ_EXTENSIONS},-auth"
  fi &&

  if in_depends $MODULE gnome-vfs2 ; then
        MOZ_EXTENSIONS="${MOZ_EXTENSIONS},gnomevfs"
  else
        MOZ_EXTENSIONS="${MOZ_EXTENSIONS},-gnomevfs"
  fi &&

  export MOZ_CO_PROJECT=browser
  export MOZILLA_OFFICIAL=1
  export BUILD_OFFICIAL=1

  export MOZ_OBJDIR="${SOURCE_DIRECTORY}/build-mozilla"
  mkdir -p ${MOZ_OBJDIR} &&

  cd ${MOZ_OBJDIR} &&

  ../mozilla/configure  \
    --prefix=/usr       \
    --with-x            \
    --with-pthreads     \
    --with-default-mozilla-five-home=$MOZILLA_HOME \
    --with-user-appdir=".firefox"       \
    --with-system-zlib  \
    --with-system-jpeg  \
    --enable-extensions=${MOZ_EXTENSIONS}       \
    --enable-single-profile        \
    --enable-storage \
    --enable-places \
    --enable-places_bookmarks \
    --enable-application=browser   \
    --enable-optimize="$CFLAGS"    \
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
    --enable-libxul \
    --enable-official-branding   \
    --disable-debug     \
    --disable-freetype2 \
    --disable-tests     \
    --disable-mochitest \
    --disable-installer \
    --disable-pedantic  \
    --disable-mailnews  \
    --disable-logging   \
    --disable-accessibility     \
    --disable-ldap      \
    --disable-profilesharing    \
    --disable-mathml    \
    $OPTS               &&

  default_make        &&

  # Put some important headers in place
  mkdir -p /usr/include/firefox-$VERSION/nss &&
  cp -Lf dist/private/nss/*.h dist/public/nss/*.h /usr/include/firefox-$VERSION/nss &&

  # Install the plugins in the right directories
  mkdir -p /opt/lunar/plugins         &&
  for plugin in `ls /usr/lib/firefox-$VERSION/plugins`; do
       `install -m755 /usr/lib/firefox-$VERSION/plugins/$plugin /opt/lunar/plugins`; done  &&

  rm -rf /usr/lib/firefox-$VERSION/plugins &&
  ln -snf /opt/lunar/plugins /usr/lib/firefox-$VERSION/plugins &&

  # Now the .desktop file and the icon
  mkdir -p /usr/share/applications /usr/share/pixmaps &&
  install -m644 $SCRIPT_DIRECTORY/firefox.desktop /usr/share/applications &&
  # please, dont just let the lin fail because /usr/share/pixmaps/firefox.xpm is an existing symlink...
  rm -f /usr/share/pixmaps/firefox.xpm &&
  install -m644 $MOZILLA_HOME/icons/mozicon50.xpm /usr/share/pixmaps/firefox.xpm &&

  # Make firefox use its own icon

  rm -rf /usr/lib/firefox-$VERSION/chrome/icons &&
  mkdir -p /usr/lib/firefox-$VERSION/chrome/icons/default &&

  for icon in 16 32 48; do
    ln -sf /usr/lib/firefox-$VERSION/icons/mozicon128.png \
           /usr/lib/firefox-$VERSION/chrome/icons/default/default$icon.png
  done

) > $C_FIFO 2>&1
