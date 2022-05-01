mkdir -p build{,-py3,-pyqt5,-py2,-pyqt5-py2} &&

pushd build-py3 &&
python ../configure.py CFLAGS="$CFLAGS" LFLAGS="$LDFLAGS" &&
make &&
popd &&
pushd build-pyqt5 &&
python ../configure.py CFLAGS="$CFLAGS" LFLAGS="$LDFLAGS" --sip-module PyQt5.sip --no-tools &&
default_make &&
popd &&
pushd build-py3 &&
make install &&
popd &&

if ! module_installed python2-sip; then
  install -Dm644 siplib/sip.h -t /usr/include/
fi
