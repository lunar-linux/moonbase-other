OPTS+=" --prefix=/usr --with-history --with-threads --disable-static" &&
mkdir build-py3 &&
pushd build-py3 &&
../configure $OPTS --with-python=/usr/bin/python3 &&
sedit 's; -shared ; -Wl,-O1,--as-needed\0 ;g' libtool &&
PYTHONHASHSEED=0 make &&
popd &&

if in_depends $MODULE python2; then
  mkdir build-py2 &&
  pushd build-py2 &&
  ../configure $OPTS --with-python=/usr/bin/python2 &&
  sedit 's; -shared ; -Wl,-O1,--as-needed\0 ;g' libtool &&
  PYTHONHASHSEED=0 make &&
  popd
fi &&

prepare_install &&

make -C build-py3 install &&

if in_depends $MODULE python2; then
  make -C build-py2/python install
fi
