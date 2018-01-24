if in_depends $MODULE qt5; then
  . /etc/profile.d/qt5.rc &&
  QT_CFLAGS+=" $(pkg-config --cflags /usr/lib/qt5/pkgconfig/Qt5Gui.pc /usr/lib/qt5/pkgconfig/Qt5Widgets)"
fi &&

OPTS+=" --disable-static \
        --enable-experimental \
        --disable-valgrind \
        --disable-debug \
        --disable-examples" &&

default_build
