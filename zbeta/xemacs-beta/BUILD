(

  LDFLAGS=`echo $LDFLAGS | sed "s/-z combreloc//"`
  pwd
  if [[ "$XEMACS_MULE" == "y" ]]; then
      OPTS="$OPTS --with-mule"
  fi

  if [[ "$XEMACS_XIM" == "y" ]]; then
      OPTS="$OPTS --with-xim=yes"
  fi

  ./configure  --prefix=/usr             \
               --with-msw=no             \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   \
               --with-xft                \
               $OPTS                     \
               --without-gtk --without-gnome && #They break tabs
  make                        &&
  prepare_install             &&
  make    install

) > $C_FIFO 2>&1

