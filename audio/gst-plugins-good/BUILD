if module_installed qt5 ; then
  . /etc/profile.d/qt5.rc &&
  OPTS+=" --with-moc=/usr/bin/moc-qt5"
fi &&

OPTS+=" --disable-debug \
        --disable-static \
        --disable-examples \
        --disable-valgrind \
        --with-gudev" &&

default_build
