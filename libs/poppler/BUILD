OPTS+=" --disable-static --disable-gtk-test --enable-xpdf-headers" &&

if in_depends $MODULE qt5; then
  OPTS+=" --disable-poppler-qt5"
fi &&

if in_depends $MODULE qt4; then
  . /etc/profile.d/qt4.rc &&
  export POPPLER_QT4_LIBS+=" -L$QTDIR/lib/qt4 -lQtCore -lQtGui -lQtXml" &&
  export POPPLER_QT4_CXXFLAGS+=" -I$QTDIR/include/qt4" &&
  export POPPLER_QT4_CFLAGS+=" -I$QTDIR/include/qt4" &&
  export POPPLER_QT4_TEST_CFLAGS+=" -I$QTDIR/include/qt4 -I$QTDIR/tests/qt4" &&
  export POPPLER_QT4_TEST_LIBS+=" -L$QTDIR/lib -lQtCore -lQtGui -lQtXml"
fi &&

default_build &&


# If in depends we will now build qt5 libs
if in_depends $MODULE qt5; then
  devoke_installwatch &&
  . /etc/profile.d/qt5.rc &&
  OPTS+=" --enable-poppler-qt5 --disable-poppler-qt4" &&
  default_build
fi &&

if [ "$SPLASH" == "y" ]; then
  ln -sf /usr/include/poppler/splash /usr/include/splash
fi
