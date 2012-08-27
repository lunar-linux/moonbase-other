(

  . /etc/profile.d/qt4.rc &&
  . /etc/profile.d/kde4.rc &&

  sedit "s:kde-config:kde4-config:g" wscript &&
  sedit "s:-lstr::" wscript &&

  sedit "s:Icon=semantik:Icon=/usr/share/icons/hicolor/48x48/apps/semantik.png:" src/data/semantik.desktop &&
  sed -i '12i Exec=/usr/bin/semantik' src/data/semantik.desktop &&
  sedit "s:Application;::" src/data/semantik.desktop &&
 
  ./waf configure --prefix=$QTDIR   \
                  --qtlibs=$QTDIR/lib/qt4          &&

  ./waf            &&

  prepare_install  &&
  ./waf install    

) > $C_FIFO 2>&1
