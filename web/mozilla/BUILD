(
    patch -p1 < $SCRIPT_DIRECTORY/mozilla-lunar-home-page.patch

    if [ "$MAILNEWS" == "n" ] ; then 
      OPTS="--disable-mailnews"
    fi

    if [ "$CALENDAR" == "y" ] ; then
      OPTS="$OPTS --enable-calendar"
    fi

    if [ "$XFT" == "y" ] ; then
      patch -p1 < $SCRIPT_DIRECTORY/mozilla-ft-bytecode.patch
      OPTS="$OPTS --enable-xft"
    fi

    if [ "$GTK2" == "y" ] ; then
      patch -p0 < $SCRIPT_DIRECTORY/gtk2mozilla_head.patch
      OPTS="$OPTS --disable-toolkit-gtk --enable-default-toolkit=gtk2"
    fi

    EXTN="--enable-extensions=default,-xmlextras,-inspector"

    if [ "$IRC" == "n" ] ; then 
      EXTN="$EXTN,-irc"
    fi

    if [ "$MATHML" == "n" ] ; then
      OPTS="$OPTS --disable-mathml"
    fi

    if [ "$IP6" == "y" ] ; then
      OPTS="$OPTS --enable-ipv6"
    fi

    if [ "$JSD" == "n" ] ; then
      OPTS="$OPTS --disable-jsd"
    fi

    if [ "$XCIN" == "y" ] ; then
      OPTS="$OPTS --enable-xinerama"
    fi

    if [ "$CRYPT" == "y" ] ; then
      OPTS="$OPTS --enable-crypto"
    fi

    if [ "$LDAP" == "n" ] ; then
      OPTS="$OPTS --disable-ldap"
    fi
    
    OPTS="$OPTS $EXTN"

  CFLAGS=${CFLAGS//pentium4/pentium3}
  CFLAGS=${CFLAGS//-msse2/}
  
  CXXFLAGS=${CXXFLAGS//pentium4/pentium3}
  CXXFLAGS=${CXXFLAGS//-msse2/}
 
  CCOPT=${CCOPT//pentium4/pentium3}
  CCOPT=${CCOPT//-msse2/}

  COPT=${COPT//pentium4/pentium3}
  COPT=${COPT//-msse2/}

  # Frequent crashes with, no crashes without?
  CFLAGS=${CFLAGS//-funroll-loops/}
  CFLAGS=${CFLAGS//-funroll-all-loops/}
  CXXFLAGS=${CXXFLAGS//-funroll-loops/}
  CXXFLAGS=${CXXFLAGS//-funroll-all-loops/}
  CCOPT=${CCOPT//-funroll-loops/}
  CCOPT=${CCOPT//-funroll-all-loops/}
  COPT=${COPT//-funroll-loops/}
  COPT=${COPT//-funroll-all-loops/}
 
  export CFLAGS CXXFLAGS CCOPT COPT

  ./configure --prefix=/usr                                     \
              --with-default-mozilla-five-home=/usr/lib/mozilla \
              --disable-pedantic                                \
              --disable-tests                                   \
              --disable-debug                                   \
              --disable-dtd-debug                               \
              --disable-installer                               \
              --enable-optimize="-w $CFLAGS"                    \
              --without-jpeg                                    \
              --enable-old-abi-compat-wrappers                  \
              --without-zlib                                    \
              --without-png                                     \
              --enable-strip                                    \
              $OPTS					        &&	  
 
  # Bleh, leave this alone
  patch -p0 < $SCRIPT_DIRECTORY/autoconf.mk.patch               &&

  default_make

) > $C_FIFO 2>&1  &&  (

   echo bleh

#  rm     -f                          /usr/lib/mozilla/component.reg
#  mkdir  -p                          /usr/lib/mozilla
#  cp     -rL  dist/bin/*             /usr/lib/mozilla
#  mkdir  -p                      /usr/include/mozilla
#  cp	 -rL  dist/include/*     /usr/include/mozilla
#  cp  $SCRIPT_DIRECTORY/mozilla  /usr/bin

#  export  MOZILLA_FIVE_HOME=/usr/lib/mozilla
#  export    LD_LIBRARY_PATH=/usr/lib/mozilla:$LD_LIBRARY_PATH

#         /usr/lib/mozilla/regxpcom
#         /usr/lib/mozilla/regchrome
#  touch  /usr/lib/mozilla/chrome/user-skins.rdf
#  touch  /usr/lib/mozilla/chrome/user-locales.rdf

)
