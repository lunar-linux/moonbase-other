export libusbmuxd_CFLAGS+=" $CFLAGS -I/usr/include/" &&

# Skirt around the ssl bump
sedit "s:SSLv3_method:SSLv23_method:" src/idevice.c &&

if in_depends $MODULE cython; then
  mkdir -p build-py &&
  pushd build-py &&
  PYTHON=/usr/bin/python2 CYTHON=/usr/bin/cython2 ../configure $OPTS --prefix=/usr &&
  default_make &&
  popd
 else 
  PYTHON=/usr/bin/python2 ./configure $OPTS --prefix=/usr &&
  default_make
fi
