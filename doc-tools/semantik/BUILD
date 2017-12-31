
  . /etc/profile.d/qt5.rc &&

  ./waf configure --prefix=/usr   \
                  --qtlibs=/usr/lib/qt5 \
                  $OPTS &&

  ./waf            &&

  prepare_install  &&
  ./waf install    
