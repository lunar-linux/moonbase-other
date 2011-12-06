(

  source /etc/profile.d/qt4.rc  &&

  sedit "s:/local/qwtpolar-\$\$QWT_POLAR_VERSION::g" qwtpolarconfig.pri &&
  sedit "s:plugins:lib/qt4/plugins:" qwtpolarconfig.pri &&
  sedit "s:features:share/qt4/mkspecs/features/:" qwtpolarconfig.pri &&
  sedit "s:/doc:/doc/$MODULE-$VERSION:" qwtpolarconfig.pri &&
  sedit "s:PLUGINS\]/designer:PLUGINS\]/usr/lib/qt4/plugins/designer:" designer/designer.pro &&

  qmake &&

  default_make

) > $C_FIFO 2>&1
