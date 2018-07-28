mkdir -p build{,-py3,-pyqt5,-py2,-pyqt5-py2} &&

pushd build-py3 &&
python3 ../configure.py CFLAGS="$CFLAGS" LFLAGS="$LDFLAGS" &&
default_make &&
popd &&
pushd build-pyqt5 &&
python3 ../configure.py CFLAGS="$CFLAGS" LFLAGS="$LDFLAGS" --sip-module PyQt5.sip --no-tools &&
default_make &&
popd &&

# Do Python2 build
if module_installed setuptools; then
  pushd  build-py2 &&
  python ../configure.py CFLAGS="$CFLAGS" LFLAGS="$LDFLAGS" &&
  default_make &&
  popd &&
  pushd build-pyqt5-py2 &&
  python ../configure.py CFLAGS="$CFLAGS" LFLAGS="$LDFLAGS" --sip-module PyQt5.sip --no-tools &&
  default_make &&
  popd
fi

install -Dm644 siplib/sip.h -t /usr/include

