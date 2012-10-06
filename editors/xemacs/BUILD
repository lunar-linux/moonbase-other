(

  LDFLAGS=`echo $LDFLAGS | sed "s/-z combreloc//"`

  if [[ "$XEMACS_MULE" == "y" ]]; then
      OPTS+=" --with-mule --with-xim=xlib"
  fi

  ./configure  --prefix=/usr             \
               --with-msw=no             \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   \
               $OPTS                     \
               --without-gtk --without-gnome && #They break tabs
  make                        &&
  prepare_install             &&
  make    install             &&

  # xemacs already installs "etags" to make its own tag files, so having
  # its own "ctags", which generally conflicts with the ctags from the
  # exuberant-ctags module "ctags", is unnecessary.

  if module_installed ctags
  then
      rm /usr/bin/ctags           &&
      rm /usr/share/man/man1/ctags.1.gz
  fi

  # the ctags from exuberant-ctags will be reinstated in POST_INSTALL

) > $C_FIFO 2>&1

