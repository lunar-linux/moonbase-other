(



  CPPFLAGS=$CPPFLAGS" -Wno-deprecated"     \
  ./configure  --prefix=/usr               \
               --sysconfdir=/etc            \
               --localstatedir=/var         &&
  make                                      &&

  if [ "$CONSOLEPLUGIN" = "y" ] ; then
    cd $SOURCE_DIRECTORY/plugins/console    &&
    CPPFLAGS=$CPPFLAGS" -Wno-deprecated"    \
    ./configure  --prefix=/usr              \
                 --sysconfdir=/etc          \
                 --localstatedir=/var       \
                 $OPTS                      &&
    make                                            
  fi                                        &&

  if [ "$QTPLUGIN" = "y" ]  ; then
    if module_installed qt3 ; then
  export LD_LIBRARY_PATH=${QT_PREFIX:-$QTDIR}/lib  &&
  export PATH=${QT_PREFIX:-$QTDIR}/bin:${KDE_PREFIX:-$KDEDIR}/bin:/usr/X11/bin:$PATH  &&
  export LD_RUN_PATH=${KDE_PREFIX:-$KDEDIR}/lib:${KDE_PREFIX:-$KDEDIR}/lib/kde3  &&
      cd $SOURCE_DIRECTORY/plugins/qt-gui               &&
      CPPFLAGS=$CPPFLAGS" -Wno-deprecated"              \
      ./configure  --prefix=/usr                        \
                   --sysconfdir=/etc                    \
                   --localstatedir=/var                 \
                   --with-qt-dir=${QT_PREFIX:-$QTDIR}   \
                   $OPTS                                &&
      make                                           
    fi                                               
  fi                                                    &&
 
 prepare_install                           &&
 cd $SOURCE_DIRECTORY                      &&
 make install                              &&
 
 if [ "$CONSOLEPLUGIN" = "y" ] ; then
   cd  $SOURCE_DIRECTORY/plugins/console   &&
   make install                                  
 fi                                        &&
 
 if [ "$QTPLUGIN" = "y" ] ; then
  if module_installed qt3 ; then
    cd $SOURCE_DIRECTORY/plugins/qt-gui    &&
    make install                                
  fi
 fi                                                
) > $C_FIFO 2>&1
