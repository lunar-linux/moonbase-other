(
 patch -p0 < $SCRIPT_DIRECTORY/mozilla-1.0.patch
    case $MAILNEWS in
	n|N) OPTS="--disable-mailnews" ;;
    esac
    
  ./configure  --disable-tests              \
               --disable-debug              \
               --enable-optimize="$CFLAGS"  \
               --without-jpeg               \
               --without-zlib               \
               --without-png                \
               --enable-crypto         	    \
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
