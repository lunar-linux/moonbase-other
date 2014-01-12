make &&

if in_depends $MODULE qt4; then
  cd GUI &&
  qmake &&
  make clean &&
  make
  cd ..
fi &&

prepare_install &&
make install &&
if [ -e GUI/i7z_GUI ]; then
  install -Dm 0755 GUI/i7z_GUI /usr/sbin/i7z-gui
fi
