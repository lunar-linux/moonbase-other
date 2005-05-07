( 
  MOZILLA_HOME=/usr/lib/$MODULE-$VERSION 
  
  OPTS="$OPTS --enable-application=mail"
  OPTS="$OPTS --disable-mathml"
  OPTS="$OPTS --disable-installer"
  OPTS="$OPTS --disable-activex"
  OPTS="$OPTS --disable-activex-scripting"
  OPTS="$OPTS --enable-xft"
  OPTS="$OPTS --disable-oji"
  OPTS="$OPTS --disable-necko-disk-cache"
  OPTS="$OPTS --disable-profilesharing --enable-single-profile"
  OPTS="$OPTS --enable-extensions=wallet,spellcheck,xmlextras,webservices,-irc,-venkman"
  OPTS="$OPTS --enable-necko-protocols=http,file,jar,viewsource,res,data"
  OPTS="$OPTS --enable-image-decoders=default,-xbm"
  
  export MOZ_THUNDERBIRD=1
  export BUILD_OFFICIAL=1
  export MOZ_CO_PROJECT=mail

    ./configure \
    --prefix=/usr	 \
    --with-x             \
    --with-pthreads      \
    --enable-reorder     \
    --enable-cpp-rtti    \
    --enable-optimize="$CFLAGS"   \
    --with-default-mozilla-five-home=$MOZILLA_HOME \
    --disable-debug      \
    --disable-tests      \
    --disable-pedantic   \
    --disable-toolkit-gtk  \
    --enable-default-toolkit=gtk2  \
    --with-gtk2          \
    --enable-crypto      \
    --enable-optimize	 \
    $OPTS               &&
              
    default_make

) > $C_FIFO 2>&1
