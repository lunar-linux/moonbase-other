(

#  for i in `ls src/*.h` ; do sedit "s:qwt_global.h:qwt-6/qwt_global.h:" $i ; done &&
#  for i in `ls src/*.cpp` ; do sedit "s:qwt_global.h:qwt-6/qwt_global.h:" $i ; done &&
#  for i in `ls src` ; do sedit "s:qwt_interval.h:qwt-6/qwt_interval.h:" src/$i ; done &&
#  for i in `ls src` ; do sedit "s:qwt_point_polar.h:qwt-6/qwt_point_polar.h:" src/$i ; done &&
#  for i in `ls src` ; do sedit "s:qwt_math.h:qwt-6/qwt_math.h:" src/$i ; done &&
#  for i in `ls src` ; do sedit "s:qwt_text_label.h:qwt-6/qwt_text_label.h:" src/$i ; done &&

  source /etc/profile.d/qt4.rc  &&

#  sedit "s:/local/qwtpolar-\$\$QWT_POLAR_VERSION::g" qwtpolarconfig.pri &&
#  sedit "s:plugins:lib/qt4/plugins:" qwtpolarconfig.pri &&
 # sedit "s:features:share/qt4/mkspecs/features/:" qwtpolarconfig.pri &&
 # sedit "s:/doc:/doc/$MODULE-$VERSION:" qwtpolarconfig.pri &&
 # sedit "s:PLUGINS\]/designer:PLUGINS\]/usr/lib/qt4/plugins/designer:" designer/designer.pro &&

  sedit "s:/usr/local:/usr:g" qwtpolarconfig.pri &&

  qmake -recursive  &&

  sedit "s:INCPATH       =:INCPATH=        -I/usr/include/qwt-6:" src/Makefile designer/Makefile &&

  make  &&
  prepare_install &&
  make install

) > $C_FIFO 2>&1
