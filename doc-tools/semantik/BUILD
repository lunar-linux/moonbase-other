(

  sedit "s:kde-config:kde4-config:g" wscript

  . /etc/profile.d/qt4.rc
  . /etc/profile.d/kde4.rc

  ./waf configure --qtdir=$QTDIR --prefix=$MODULE_PREFIX &&
  ./waf            &&

  prepare_install  &&
  ./waf install

) > $C_FIFO 2>&1
