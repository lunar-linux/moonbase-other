(
  patch -p1 < $SCRIPT_DIRECTORY/licq-1.2.0-vectorcheck.patch
  ./configure  --prefix=/usr                       \
               --sysconfdir=/etc                   \
               --localstatedir=/var                &&
  make                                             &&

if [ "$CONSOLEPLUGIN" = "y" ] ; then
  cd  $SOURCE_DIRECTORY/plugins/console-$PLUGIN_VERSION   &&
  ./configure  --prefix=/usr                       \
               --sysconfdir=/etc                   \
               --localstatedir=/var                &&
  make                                             
fi                                                 &&

if [ "$QTPLUGIN" = "y" ] ; then
  if  module_installed  qt-x11;  then

    cd  $SOURCE_DIRECTORY/plugins/qt-gui-$PLUGIN_VERSION  &&
    KDEDIR=/opt/lunar/kde/2                        &&
    ./configure  --prefix=/usr                     \
                 --sysconfdir=/etc                 \
                 --localstatedir=/var              \
                 --with-qt=/opt/lunar/qt/2         \
                 $OPTS                             &&
    make                                           
  fi                                               
 fi                                                &&
  prepare_install                                  &&
  cd  $SOURCE_DIRECTORY                            &&
  make    install                                  &&
 if [ "$CONSOLEPLUGIN" = "y" ] ; then
  cd  $SOURCE_DIRECTORY/plugins/console-$PLUGIN_VERSION   &&
  make    install                                  
 fi                                                &&
 if [ "$QTPLUGIN" = "y" ] ; then
  if  module_installed  qt-x11;  then
    cd  $SOURCE_DIRECTORY/plugins/qt-gui-$PLUGIN_VERSION &&
    make    install                                      
  fi
 fi                                                
) > $C_FIFO 2>&1
