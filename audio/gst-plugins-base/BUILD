if module_installed qt5; then
  . /etc/profile.d/qt5.rc &&
  QT_CFLAGS+=" $(pkg-config --cflags Qt5Gui Qt5Widgets)"
else
  OPTS+=" --disable-qt5"
fi &&

OPTS+=" --disable-static \
        --enable-experimental \
        --disable-valgrind \
        --disable-debug \
        --disable-examples"

default_build
