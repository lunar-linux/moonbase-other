(
  if module_is_expired $MODULE && [ "$VERSION" != "`installed_version $MODULE`" ]; then
        set_module_config OLD_VER "`installed_version $MODULE`"
  fi &&

  MOZILLA_HOME=/usr/lib/$MODULE-$VERSION 
  MOZ_EXTENSIONS="wallet,spellcheck,xmlextras,webservices"
  NECKO_PROT="http,file,jar,viewsource,res,data"

  if in_depends heimdal ; then
        MOZ_EXTENSIONS="${MOZ_EXTENSIONS},negotiateauth"
  else
        MOZ_EXTENSIONS="${MOZ_EXTENSIONS},-negotiateauth"
  fi &&

  # This hack added to fix a gtk+-2/pango/atk update that broke firefox. This should be removed in the future.
  sedit "s/(MOZ_GTK2_LIBS)/(MOZ_GTK2_LIBS) -lX11 -lXrender/" layout/build/Makefile.in &&

  export PKG_CONFIG_PATH=/usr/X11R6/lib/pkgconfig:/usr/lib/pkgconfig
  export MOZ_THUNDERBIRD=1
  export MOZILLA_OFFICIAL=1
  export BUILD_OFFICIAL=1

  ./configure           \
    --prefix=/usr       \
    --with-x            \
    --with-pthreads     \
    --with-default-mozilla-five-home=$MOZILLA_HOME \
    --with-user-appdir=".thunderbird"       \
    --with-system-zlib  \
    --with-system-png   \
    --with-system-jpeg  \
    --enable-extensions=${MOZ_EXTENSIONS}       \
    --enable-single-profile        \
    --enable-application=mail      \
    --enable-default-toolkit=gtk2  \
    --enable-optimize="$CFLAGS"    \
    --enable-xft        \
    --enable-reorder    \
    --enable-cpp-rtti   \
    --enable-cpp-exceptions \
    --enable-crypto     \
    --enable-strip      \
    --enable-strip-libs \
    --enable-xterm-updates      \
    --enable-official-branding  \
    --enable-image-decoders=default,-xbm        \
    --enable-necko-protocols=${NECKO_PROT}      \
    --disable-debug     \
    --disable-tests     \
    --disable-oji       \
    --disable-svg       \
    --disable-plugins   \
    --disable-necko-disk-cache  \
    --disable-installer \
    --disable-pedantic  \
    --disable-logging   \
    --disable-accessibility     \
    --disable-freetype2 \
    --disable-profilesharing    \
    --disable-mathml    \
    $OPTS               &&

  default_make        &&

    # Enigmail support disabled since it doesn't work anylonger
    # Blame the thunderbird developers
    #if module_installed gnupg ; then
    #  build/autoconf/make-makefile extensions/ipc \
    #            extensions/enigmail
    #  make -C extensions/ipc
    #  make -C extensions/enigmail
    #  make -C extensions/ipc install 
    #  make -C extensions/enigmail install
    #fi

    # Needed for rss support
    install -d $MOZILLA_HOME/defaults/isp/US &&
    install -m644 $SOURCE_DIRECTORY/mail/extensions/newsblog/rss.rdf $MOZILLA_HOME/defaults/isp &&
    install -m644 $SOURCE_DIRECTORY/mail/extensions/newsblog/rss.rdf $MOZILLA_HOME/defaults/isp/US &&

    # Put some important headers in place
    mkdir -p /usr/include/$MODULE-$VERSION/nss &&
    cp -Lf dist/private/nss/*.h dist/public/nss/*.h /usr/include/$MODULE-$VERSION/nss &&

    # Now the .desktop file and the icon
    mkdir -p /usr/share/applications /usr/share/pixmaps &&
    install -m644 $SOURCE_CACHE/$SOURCE2 /usr/share/applications &&
    rm -f /usr/share/pixmaps/thunderbird.xpm &&
    install -m644 $MOZILLA_HOME/icons/mozicon50.xpm /usr/share/pixmaps

) > $C_FIFO 2>&1
