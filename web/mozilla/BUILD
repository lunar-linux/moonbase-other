(

  export patchdir=$SOURCE_DIRECTORY/$MODULE-$PVERSION-lunar
  # fixes a broken upstream Makefile.in
  sedit 's/\\$/ \\/' extensions/p3p/Makefile.in &&
  EXTENSIONS="default,finger,-gnomevfs"

  if [ "$COM" == "n" ] ; then
    OPTS="$OPTS --disable-composer"
  else
    OPTS="$OPTS --enable-composer"
  fi

  if [ "$IRC" == "n" ] ; then
    EXTENSIONS="$EXTENSIONS,-irc"
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
    EXTENSIONS="$EXTENSIONS,-venkman"
  else
    OPTS="$OPTS --enable-jsd"
  fi

  if [ "$INS" == "n" ] ; then
    EXTENSIONS="$EXTENSIONS,-inspector"
  fi

  if [ "$HELP" == "n" ] ; then
    EXTENSIONS="$EXTENSIONS,-help"
  fi
  
  if in_depends $MODULE heimdal ; then
	EXTENSIONS="${EXTENSIONS},negotiateauth"
  else
	EXTENSIONS="${EXTENSIONS},-negotiateauth"
  fi &&

  unset CC CXX
  export PKG_CONFIG_PATH=/usr/X11R6/lib/pkgconfig:/usr/lib/pkgconfig
  export MOZ_NSS_AUTOCONF=1
  export NATIVE_THEME_SUPPORT=1
  export MOZILLA_USE_XFT=1
  export BUILD_OPT=1

  echo "$OPTS $EXTENSIONS" > /tmp/mozz

  ./configure --prefix=/usr                     \
              --with-default-mozilla-five-home=/usr/lib/mozilla-$VERSION \
              --sysconfdir=/etc                 \
              --localstatedir=/var              \
              --infodir=/usr/share/info         \
              --mandir=/usr/share/man           \
              --enable-xinerama                 \
              --with-system-jpeg                \
              --with-system-zlib                \
              --with-system-png                 \
              --with-system-mng                 \
              --with-x                          \
              --with-pthreads                   \
              --enable-reorder                  \
              --disable-tests                   \
              --disable-installer               \
              --disable-pedantic                \
              --disable-debug                   \
              --disable-dtd-debug               \
              --disable-toolkit-gtk             \
              --disable-short-wchar             \
              --disable-xprint                  \
              --disable-gnomevfs                \
              --enable-default-toolkit=gtk2     \
              --enable-toolkit=gtk2             \
              --with-gtk2                       \
              --enable-strip                    \
              --enable-strip-libs               \
              --enable-xft                      \
              --disable-freetype2               \
              --disable-svg                     \
              --enable-crypto                   \
              --enable-optimize="$CFLAGS"       \
              --enable-cpp-rtti                 \
              --enable-xpctools                 \
              --enable-xsl                      \
              --enable-ipv6                     \
              --enable-xterm-updates            \
              --enable-extensions=${EXTENSIONS} \
              $OPTS                            &&

  default_make &&

  # NSS Headers are already compiled I dont know why I havent
  # seen this till now
  NSS_INST_DIR=/usr/include/mozilla-$VERSION/nss
  mkdir -p $NSS_INST_DIR &&

  for dir in public private ; do
    cp -Lf $SOURCE_DIRECTORY/dist/${dir}/nss/*.h $NSS_INST_DIR
  done &&

  # jol change. On clean install /usr/share/applications
  mkdir -p /usr/share/applications /usr/share/pixmaps &&

  install $patchdir/mozilla.desktop /usr/share/applications/ &&
  install $patchdir/mozilla.png /usr/share/pixmaps/ &&

  if module_installed gnupg ; then
    install $patchdir/mozilla-mail.png /usr/share/pixmaps/ &&
    install $patchdir/mozilla-mail.desktop /usr/share/applications/
  fi

) > $C_FIFO 2>&1
