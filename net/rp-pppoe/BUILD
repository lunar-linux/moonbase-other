(

  sedit  "s/read a/a=0/"  scripts/adsl-setup.in
  cd  src
  ./configure  --build=$BUILD          \
               --prefix=/usr           \
               --sysconfdir=/etc       \
               --localstatedir=/var    \
               --mandir=/usr/share/man \
               $OPTS                   &&
  sedit "s/docdir=\/usr\/doc/docdir=\/usr\/share\/doc/" Makefile
  make                                 &&
  cd  ../gui                           &&
  make                                 &&
  prepare_install                      &&
  make  install                        &&
  cd  ../src                           &&
  make  install

) > $C_FIFO 2>&1  &&  (

  mkdir  -p  /usr/share/applnk/Internet
  mkdir  -p  /usr/share/gnome/apps/Internet
  cp  $SCRIPT_DIRECTORY/tkpppoe.kdelnk   /usr/share/applnk/Internet
  cp  $SCRIPT_DIRECTORY/tkpppoe.desktop  /usr/share/gnome/apps/Internet

  case  $CONFIG_PPPOE  in
    y|Y|j|J)  sh  scripts/adsl-setup  ;;
          *)  true  ;;
  esac
)
