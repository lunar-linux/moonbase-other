
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
