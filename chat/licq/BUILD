(

  ./configure  --prefix=/usr         \
               --sysconfdir=/etc     \
               --localstatedir=/var  &&
  make                               &&

  cd  $SOURCE_DIRECTORY/plugins/console-1.2.0      &&
  ./configure  --prefix=/usr                       \
               --sysconfdir=/etc                   \
               --localstatedir=/var                &&
  make                                             &&

  if  module_installed  qt-x11;  then

    cd  $SOURCE_DIRECTORY/plugins/qt-gui-1.2.0     &&
    KDEDIR=/opt/lunar/kde/2                        &&
    ./configure  --prefix=/usr                     \
                 --sysconfdir=/etc                 \
                 --localstatedir=/var              \
                 --with-qt=/opt/lunar/qt/2         \
                 $OPTS                             &&
    make

  fi                                              &&
  prepare_install                                 &&
  cd  $SOURCE_DIRECTORY                           &&
  make    install                                 &&
  cd  $SOURCE_DIRECTORY/plugins/console-1.2.0     &&
  make    install                                 &&
  if  module_installed  qt-x11;  then
    cd  $SOURCE_DIRECTORY/plugins/qt-gui-1.2.0
    make    install
  fi

) > $C_FIFO 2>&1
