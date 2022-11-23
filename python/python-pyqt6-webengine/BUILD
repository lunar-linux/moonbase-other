source /etc/profile.d/qt6.rc &&

sip-build --no-make --qmake=/usr/lib/qt6/bin/qmake6 &&

cd build &&
make &&

prepare_install &&

make INSTALL_ROOT=/ install
