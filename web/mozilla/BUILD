(
 patch -p0 < $SCRIPT_DIRECTORY/mozilla-1.0.patch
 patch -p1 < $SCRIPT_DIRECTORY/mozilla-1.0-asmfixes.patch
 patch -p0 < $SCRIPT_DIRECTORY/mozilla-1.0-abi-compat-wrappers.patch

 OPTS=

    if [ "$MAILNEWS" == "n" ] ; then 
      OPTS="--disable-mailnews"
    fi

    if [ "$CALENDAR" == "y" ] ; then
      OPTS="$OPTS --enable-calendar"
    fi

    # Mozilla won't build with freetype > 2.0.7

    if [ "$XFT" == "y" ] ; then
      OPTS="$OPTS --enable-xft"
      patch -p1 < $SCRIPT_DIRECTORY/mozilla-1.0-freetype.patch
    fi

    if [ "$GTK2" == "y" ] ; then
      OPTS="$OPTS --enable-default-toolkit=gtk2"
    fi

    EXTN="--enable-extensions=default,-xmlextras,-inspector"

    if [ "$IRC" == "n" ] ; then 
      EXTN="$EXTN,-irc"
    fi
    
    OPTS="$OPTS $EXTN"

  ./configure  --disable-tests              \
               --disable-debug              \
               --enable-optimize="$CFLAGS"  \
               --without-jpeg               \
               --without-zlib               \
               --without-png                \
               --enable-crypto         	    \
               --enable-strip               \
	       $OPTS			    &&
  make                                      &&
  prepare_install

) > $C_FIFO 2>&1  &&  (

  rm     -f                          /usr/lib/mozilla/component.reg
  mkdir  -p                          /usr/lib/mozilla
  cp     -rL  dist/bin/*             /usr/lib/mozilla
  mkdir  -p                      /usr/include/mozilla
  cp	 -rL  dist/include/*     /usr/include/mozilla
  cp  $SCRIPT_DIRECTORY/mozilla  /usr/bin

  export  MOZILLA_FIVE_HOME=/usr/lib/mozilla
  export    LD_LIBRARY_PATH=/usr/lib/mozilla:$LD_LIBRARY_PATH

         /usr/lib/mozilla/regxpcom
         /usr/lib/mozilla/regchrome
  touch  /usr/lib/mozilla/chrome/user-skins.rdf
  touch  /usr/lib/mozilla/chrome/user-locales.rdf

)
