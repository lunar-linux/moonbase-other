DESTDIR=$SOURCE_DIRECTORY/__dest
mkdir -p build{,-py2,-pyqt5-py2} &&

pushd build-py2 &&
python2 ../configure.py CFLAGS="$CFLAGS" LFLAGS="$LDFLAGS" &&
make &&
prepare_install &&
make DESTDIR=$DESTDIR install &&
# Remove conflicts with python-sip
rm "$DESTDIR"/usr/bin/sip &&
popd &&
pushd build-pyqt5-py2 &&
python2 ../configure.py CFLAGS="$CFLAGS" LFLAGS="$LDFLAGS" --sip-module PyQt5.sip --no-tools &&
make &&
prepare_install &&
make DESTDIR=$DESTDIR install &&
popd &&

if ! module_installed python-sip; then
  install -Dm644 siplib/sip.h -t "$DESTDIR"/usr/include/
fi

prepare_install &&

cp -rf --remove-destination $DESTDIR/* /
