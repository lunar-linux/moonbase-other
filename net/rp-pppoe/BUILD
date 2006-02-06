(

  sedit "s/read a/a=0/" scripts/pppoe-setup.in
  cd src
  ./configure  --build=$BUILD           \
               --prefix=/usr            \
               --sysconfdir=/etc        \
               --localstatedir=/var     \
               --mandir=/usr/share/man  \
               $OPTS                   &&
  sedit "s/docdir=\/usr\/doc/docdir=\/usr\/share\/doc/" Makefile &&
  make          &&
  cd ../gui     &&
  default_make  &&
  cd ../src     &&
  make install  &&

  ln -sf /usr/sbin/pppoe-start    /usr/sbin/adsl-start   &&
  ln -sf /usr/sbin/pppoe-stop     /usr/sbin/adsl-stop    &&
  ln -sf /usr/sbin/pppoe-status   /usr/sbin/adsl-status  &&
  ln -sf /usr/sbin/pppoe-connect  /usr/sbin/adsl-connect &&
  ln -sf /usr/sbin/pppoe-setup    /usr/sbin/adsl-setup   &&
  mkdir -p /usr/share/applnk/Internet  &&
  mkdir -p /usr/share/gnome/apps/Internet  &&
  install $SCRIPT_DIRECTORY/tkpppoe.kdelnk /usr/share/applnk/Internet/ &&
  cp $SCRIPT_DIRECTORY/tkpppoe.desktop /usr/share/gnome/apps/Internet/ &&

  case $CONFIG_PPPOE in
    y|Y|j|J) sh scripts/pppoe-setup ;;
          *) true ;;
  esac

) > $C_FIFO 2>&1
