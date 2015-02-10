
  . /etc/profile.d/qt4.rc &&
  . /etc/profile.d/kde4.rc &&
 
  ./waf configure --prefix=$QTDIR   \
                  --qtlibs=$QTDIR/lib/qt4 &&

  ./waf            &&

  prepare_install  &&
  ./waf install    
