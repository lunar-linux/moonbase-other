
( 
  MOZILLA_HOME=/opt/lunar/firefox/lib/mozilla 
  
  OPTS="$OPTS --enable-strip --enable-strip-libs"
  OPTS="$OPTS --disable-toolkit-gtk --enable-default-toolkit=gtk2 --enable-toolkit=gtk2 --with-gtk2"
  OPTS="$OPTS --disable-mathml"
  OPTS="$OPTS --disable-accessibility"
  OPTS="$OPTS --disable-jsd"
  OPTS="$OPTS --enable-xft"
  OPTS="$OPTS --disable-ldap"
  OPTS="$OPTS --enable-svg --enable-svg-renderer-libart"
  OPTS="$OPTS --enable-extensions=default,-irc" 

  export PKG_CONFIG_PATH=/usr/X11R6/lib/pkgconfig:/usr/lib/pkgconfig
  export MOZ_NSS_AUTOCONF=1
  export NATIVE_THEME_SUPPORT=1
  export MOZ_PHOENIX=1
  export MOZ_INTERNAL_LIBART_LGPL=1
  export BUILD_OPT=1

  echo "$OPTS" > /tmp/mozz

  unpack $SOURCE2 &&
  cd other-licenses &&
  unpack $SOURCE3   &&
  cd $SOURCE_DIRECTORY &&

    ./configure \
    --prefix=/opt/lunar/firefox    \
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
    $OPTS               &&
              
    default_make      

) > $C_FIFO 2>&1
