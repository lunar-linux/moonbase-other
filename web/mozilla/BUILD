(
  export patchdir=$SOURCE_DIRECTORY/$MODULE-$VERSION-lunar &&
  EXTENTIONS="--enable-extensions=default,finger,spellcheck"

  if [ "$COM" == "n" ] ; then
    OPTS="$OPTS --disable-composer"
  fi

  if [ "$IRC" == "n" ] ; then
    EXTENTIONS="$EXTENTIONS,-irc"
  fi  

  if [ "$MATHML" == "n" ] ; then
    OPTS="$OPTS --disable-mathml"
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

  if [ "$HELP" == "n" ] ; then
    EXTENTIONS="$EXTENTIONS,-help"
  fi

  export MOZ_NSS_AUTOCONF=1
  export NATIVE_THEME_SUPPORT=1
  export MOZILLA_USE_XFT=1
  export MOZ_INTERNAL_LIBART_LGPL=1

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
              --with-pthreads							\
              --enable-reorder							\
              --disable-tests							\
              --disable-installer						\
              --disable-pedantic						\
              --disable-debug							\
              --disable-dtd-debug						\
              --disable-toolkit-gtk 						\
              --enable-default-toolkit=gtk2 					\
              --enable-toolkit=gtk2 						\
              --with-gtk2							\
              --enable-strip \
              --enable-strip-libs                          \
              --enable-xft   							\
              --enable-svg  \
              --enable-svg-renderer-libart  \
	      --enable-crypto							\
              --enable-optimize="$CFLAGS"                               \
              --enable-cpp-rtti                                         \
              --enable-xpctools                                         \
              $OPTS								\
              $EXTENTIONS							&&

    default_make   &&

cp $patchdir/mozilla.desktop /usr/share/applications/mozilla.desktop &&
cp $patchdir/mozilla.png /usr/share/pixmaps/mozilla.png &&

if module_installed gnupg; then
  cp $patchdir/mozilla-mail.png /usr/share/pixmaps/mozilla-mail.png   &&
  cp $patchdir/mozilla-mail.desktop /usr/share/applications/mozilla-mail.desktop
fi

) > $C_FIFO 2>&1
