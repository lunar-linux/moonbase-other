(
  export patchdir=$SOURCE_DIRECTORY/$MODULE-$VERSION-lunar 
  EXTENTIONS="default,finger,spellcheck"

  if [ "$COM" == "n" ] ; then
    OPTS="$OPTS --disable-composer"
  else
    OPTS="$OPTS --enable-composer" 
  fi

  if [ "$IRC" == "n" ] ; then
    EXTENTIONS="$EXTENTIONS,-irc"
  fi  

  if [ "$MATHML" == "n" ] ; then
    OPTS="$OPTS --disable-mathml"
  else
    OPTS="$OPTS --enable-mathml" 
  fi

  if [ "$ACC" == "n" ] ; then
    OPTS="$OPTS --disable-accessibility"
  else 
    OPTS="$OPTS --enable-accessibility"
  fi

  if [ "$JSD" == "n" ] ; then
    OPTS="$OPTS --disable-jsd"
    EXTENTIONS="$EXTENTIONS,-venkman"
  else
    OPTS="$OPTS --enable-jsd"
  fi

  if [ "$INS" == "n" ] ; then
    EXTENTIONS="$EXTENTIONS,-inspector"
  fi

  if [ "$HELP" == "n" ] ; then
    EXTENTIONS="$EXTENTIONS,-help"
  fi
  
  unset  CC CXX
  export MOZ_NSS_AUTOCONF=1
  export NATIVE_THEME_SUPPORT=1
  export MOZILLA_USE_XFT=1
  export MOZ_INTERNAL_LIBART_LGPL=1
  export BUILD_OPT=1

  echo "$OPTS $EXTENTIONS" > /tmp/mozz

  ./configure --prefix=/usr							\
              --with-default-mozilla-five-home=/usr/lib/mozilla-$VERSION	\
              --sysconfdir=/etc			\
              --localstatedir=/var      	\
              --infodir=/usr/share/info		\
              --mandir=/usr/share/man	        \
              --enable-xinerama			\
              --with-system-jpeg		\
              --with-system-zlib		\
              --with-system-png			\
              --with-system-mng			\
              --with-pthreads			\
              --enable-reorder			\
              --disable-tests			\
              --disable-installer		\
              --disable-pedantic		\
              --disable-debug			\
              --disable-dtd-debug		\
              --disable-toolkit-gtk 		\
              --disable-short-wchar    		\
              --disable-xprint         		\
              --enable-default-toolkit=gtk2 	\
              --enable-toolkit=gtk2 		\
              --with-gtk2			\
              --enable-strip 			\
              --enable-strip-libs               \
              --enable-xft   			\
              --disable-freetype2               \
              --enable-svg  			\
              --enable-svg-renderer-libart 	\
	      --enable-crypto			\
              --enable-optimize="$CFLAGS"       \
              --enable-cpp-rtti                 \
              --enable-xpctools                 \
              --enable-xsl                      \
              --enable-ipv6                     \
              --enable-xterm-updates            \
              --enable-extensions=all,${EXTENSIONS} \
              $OPTS                            &&
              default_make                     &&

    #NSS Headers are already compiled I dont know why I havent
    #seen this till now 
    NSS_INST_DIR=/usr/include/mozilla-$VERSION/nss 
    mkdir -p $NSS_INST_DIR &&
    
    for  dir  in  public private;  do
      cp  -Lf  $SOURCE_DIRECTORY/dist/${dir}/nss/*.h $NSS_INST_DIR
    done     &&
    
# jol change. On clean install /usr/share/applications
mkdir -p /usr/share/applications 
mkdir -p /usr/share/pixmaps

cp $patchdir/mozilla.desktop /usr/share/applications/mozilla.desktop &&
cp $patchdir/mozilla.png /usr/share/pixmaps/mozilla.png &&

if module_installed gnupg; then
  cp $patchdir/mozilla-mail.png /usr/share/pixmaps/mozilla-mail.png   &&
  cp $patchdir/mozilla-mail.desktop /usr/share/applications/mozilla-mail.desktop
fi

) > $C_FIFO 2>&1
