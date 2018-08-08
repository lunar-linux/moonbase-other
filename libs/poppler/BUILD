OPTS+=" -DBUILD_SHARED_LIBS=ON \
        -DENABLE_GTK_DOC=OFF \
        -DBUILD_GTK_TESTS=OFF \
        -DENABLE_XPDF_HEADERS=ON"

if in_depends $MODULE qt4; then
  . /etc/profile.d/qt4.rc &&
  export POPPLER_QT4_LIBS+=" -L$QTDIR/lib/qt4 -lQtCore -lQtGui -lQtXml" &&
  export POPPLER_QT4_CXXFLAGS+=" -I$QTDIR/include/qt4" &&
  export POPPLER_QT4_CFLAGS+=" -I$QTDIR/include/qt4" &&
  export POPPLER_QT4_TEST_CFLAGS+=" -I$QTDIR/include/qt4 -I$QTDIR/tests/qt4" &&
  export POPPLER_QT4_TEST_LIBS+=" -L$QTDIR/lib -lQtCore -lQtGui -lQtXml"
fi &&

# If in depends we will now build qt5 libs
if in_depends $MODULE qt5; then
  CXXFLAGS+=" --std=c++11" &&
  . /etc/profile.d/qt5.rc
fi &&

default_cmake_build &&

if [ "$SPLASH" == "y" ]; then
  ln -sf /usr/include/poppler/splash /usr/include/splash
fi
