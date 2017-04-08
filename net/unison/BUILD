unset CFLAGS CXXFLAGS &&

make clean &&
make mkProjectInfo &&

if module_installed lablgtk; then
  make UISTYLE=gtk2
else
  make UISTYLE=text
fi &&

prepare_install &&
strip unison &&
cp unison /usr/bin/

install -d /usr/share/{pixmaps,applications}
convert win32rc/U.ico[1] /usr/share/pixmaps/$MODULE.png
#install -m644 ../desktop /usr/share/applications/$MODULE.desktop
