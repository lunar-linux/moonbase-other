(
  CPPFLAGS=$CPPFLAGS" -Wno-deprecated"            \
  ./configure  --prefix=/usr                      \
               --sysconfdir=/etc                  \
               --localstatedir=/var               &&
  make                                            &&

if [ "$CONSOLEPLUGIN" = "y" ] ; then
  cd  $SOURCE_DIRECTORY/plugins/console           &&
  CPPFLAGS=$CPPFLAGS" -Wno-deprecated"            \
  ./configure  --prefix=/usr                      \
               --sysconfdir=/etc                  \
               --localstatedir=/var               \
	       $OPTS                              &&
  make                                            
fi                                                &&

if [ "$QTPLUGIN" = "y" ] ; then
 if  module_installed  qt3;  then

  cd  $SOURCE_DIRECTORY/plugins/qt-gui            &&
  KDEDIR=/opt/lunar/kde/3                         &&
  QTDIR=/opt/lunar/qt/3                           &&
  CPPFLAGS=$CPPFLAGS" -Wno-deprecated"            \
  ./configure  --prefix=/usr                      \
               --sysconfdir=/etc                  \
               --localstatedir=/var               \
               --with-qt=/opt/lunar/qt/3          \
               $OPTS                              &&
  make                                           
 fi                                               
fi                                                &&
 
 prepare_install                                  &&
 
 cd  $SOURCE_DIRECTORY                            &&
  make    install                                 &&
 
 if [ "$CONSOLEPLUGIN" = "y" ] ; then
  cd  $SOURCE_DIRECTORY/plugins/console           &&
  make    install                                  
 fi                                               &&
 
 if [ "$QTPLUGIN" = "y" ] ; then
  if  module_installed  qt3;  then
    cd  $SOURCE_DIRECTORY/plugins/qt-gui          &&
    make    install                                
  fi
 fi                                                
) > $C_FIFO 2>&1
