. /etc/profile.d/qt5.rc &&

OPTS+=" USE_SYSTEM_QUAZIP=1 USE_SYSTEM_HUNSPELL=1" &&

/usr/lib/qt5/bin/qmake $OPTS texstudio.pro &&

make &&
prepare_install &&
make install

