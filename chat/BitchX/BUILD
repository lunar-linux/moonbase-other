(

  if [ "$IPV6" == "y" ] ; then
    OPTS="$OPTS --enable-ipv6"
  fi

  if [ "$CDROM" == "y" ] ; then
    OPTS="$OPTS --enable-cdrom"
  fi

  if [ "$PLUGINS" == "y" ] ; then
    OPTS="$OPTS --with-plugins"
  fi

  if module_installed openssl ; then   # Ya just never know...
    if [ "$SSL" == "y" ] ; then
      OPTS="$OPTS --with-ssl"
    fi
  fi

  patch_it $SOURCE_CACHE/$SOURCE2 0           &&

  export CC="gcc"                             &&
  export CCC="g++"                            &&
  export CXX="g++"                            &&
  export CFLAGS="-O2 -Wall -g"                &&
  ./configure --without-gtk                   \
              --prefix=/usr                   \
              --infodir=/usr/share/info       \
              --mandir=/usr/share/man         \
              $OPTS                           &&
  default_make                                &&
  install -m755 $SCRIPT_DIRECTORY/bitchx /usr/bin/bitchx

) > $C_FIFO 2>&1
