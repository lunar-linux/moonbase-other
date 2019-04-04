if module_installed qt5; then
  . /etc/profile.d/qt5.rc &&
  OPTS+=" --with-moc=/usr/bin/moc-qt5" &&
  QT_CFLAGS=" $(pkg-config --cflags Qt5Gui Qt5Widgets)"
fi &&

OPTS+=" --disable-static \
        --enable-experimental \
        --disable-valgrind \
        --disable-debug \
        --disable-examples"

default_build
