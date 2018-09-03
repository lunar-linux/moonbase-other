. /etc/profile.d/qt5.rc &&

OPTS+=" USE_SYSTEM_QUAZIP=1 USE_SYSTEM_HUNSPELL=1" &&

sed -i "s/-lquazip/-lquazip5/g" texstudio.pro &&
sed -i "s|include/quazip|include/quazip5|g" texstudio.pro &&

/usr/lib/qt5/bin/qmake $OPTS texstudio.pro &&

make &&
prepare_install &&
make install

