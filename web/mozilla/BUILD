( export patchdir=$SOURCE_DIRECTORY/$MODULE-$VERSION-lunar &&
  EXTENTIONS="--enable-extensions=default,finger"

  STRIP_TEST=$(echo "$LDF" | grep "Strip")

  if [ -n "$STRIP_TEST" ] ; then
    OPTS="$OPTS --enable-strip --enable-strip-libs"
  fi 

  # I'm considerign Gtk+1 obsolete here
  if [ "$GTK" == "y" ] ; then
    OPTS="$OPTS --disable-toolkit-gtk --enable-default-toolkit=gtk2 --enable-toolkit=gtk2 --with-gtk2"
  else
    OPTS="$OPTS --enable-toolkit-gtk"
  fi 

  if [ "$MAIL" == "n" ] ; then
    OPTS="$OPTS --disable-mailnews"
  fi

  if [ "$COM" == "n" ] ; then
    OPTS="$OPTS --disable-composer"
  fi

  if [ "$CAL" == "y" ] ; then
    OPTS="$OPTS --enable-calendar"
  fi

  if [ "$IRC" == "n" ] ; then
    EXTENTIONS="$EXTENTIONS,-irc"
  fi  

  if [ "$MATHML" == "n" ] ; then
    OPTS="$OPTS --disable-mathml"
  fi

  if [ "$SVG" == "y" ] ; then
    OPTS="$OPTS --enable-svg"
    export MOZ_INTERNAL_LIBART_LGPL=1
  fi

  if [ "$ACC" == "n" ] ; then
    OPTS="$OPTS --disable-accessibility"
  fi

  if [ "$JSD" == "n" ] ; then
    OPTS="$OPTS --disable-jsd"
    EXTENTIONS="$EXTENTIONS,-venkman"
  fi

  if [ "$INS" == "n" ] ; then
    EXTENTIONS="$EXTENTIONS,-inspector"
  fi

  if [ "$CRYPTO" == "y" ] ; then
    OPTS="$OPTS --enable-crypto"
  fi

  if [ "$XFT" == "y" ] ; then
    OPTS="$OPTS --enable-xft"
    export MOZILLA_USE_XFT=1
  fi

  if [ "$LDAP" == "n" ] ; then
    OPTS="$OPTS --disable-ldap"
  fi

  if [ "$HELP" == "n" ] ; then
    EXTENTIONS="$EXTENTIONS,-help"
  fi

  export MOZ_NSS_AUTOCONF=1
  export NATIVE_THEME_SUPPORT=1

  echo "$OPTS $EXTENTIONS" > /tmp/mozz

  # Force Xinerama, it's small as hell and if some one wants to use it, he won't complain of recompiling mozilla
  ./configure --prefix=/usr							\
              --with-default-mozilla-five-home=/usr/lib/mozilla-$VERSION	\
              --sysconfdir=/etc							\
              --localstatedir=/var						\
              --infodir=/usr/share/info						\
              --mandir=/usr/share/man						\
              --enable-xinerama							\
              --with-system-jpeg						\
              --with-system-zlib						\
              --with-system-png							\
              --with-system-mng							\
              --enable-old-abi-compat-wrappers					\
              --with-pthreads							\
              --enable-reorder							\
              --disable-tests							\
              --disable-installer						\
              --disable-pedantic						\
              --disable-debug							\
              --disable-dtd-debug						\
              --enable-cpp-rtti                                                 \
              $OPTS								\
              $EXTENTIONS							&&
make &&

if [ "$ENIG" == "y" ] ; then
  cd extensions/ipc &&
  make         &&
  cd ../enigmail &&
  make &&
  make install 
fi &&

cd $SOURCE_DIRECTORY &&

make install &&

  cp $patchdir/mozilla.desktop /usr/share/applications &&
  cp $patchdir/mozilla-mail.desktop /usr/share/applications &&
  cp $patchdir/mozilla.png /usr/share/pixmaps &&
  cp $patchdir/mozilla-mail.png /usr/share/pixmaps 

) > $C_FIFO 2>&1
