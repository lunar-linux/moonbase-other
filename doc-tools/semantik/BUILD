(

  . /etc/profile.d/qt4.rc &&
  . /etc/profile.d/kde4.rc &&

  sedit "s:kde-config:kde4-config:g" wscript &&

  sedit "s:Icon=semantik:Icon=\$KDE_INSTALL_DIR/share/icons/hicolor/48x48/apps/semantik.png:" src/data/semantik.desktop &&
  sed -i '12i Exec=$KDE_INSTALL_DIR/bin/semantik' src/data/semantik.desktop &&
  sedit "s:Application;::" src/data/semantik.desktop &&
 
  ./waf configure --qtdir=$QTDIR --prefix=$MODULE_PREFIX &&
  ./waf            &&

  prepare_install  &&
  ./waf install    

) > $C_FIFO 2>&1
