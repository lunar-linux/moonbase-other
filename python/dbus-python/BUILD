# Do the python2 install first
if in_depends $MODULE Python; then
  mkdir python2 &&
  pushd python2 &&
  PYTHON=/usr/bin/python ../configure --prefix=/usr &&
  make &&
  popd &&
  prepare_install &&
  make -C python2 install
fi &&

# Now the python3 stuff
if in_depends $MODULE Python-3; then
  mkdir python3 &&
  pushd python3 &&
  PYTHON=/usr/bin/python3 ../configure --prefix=/usr &&
  make &&
  popd &&
  prepare_install &&
  make -C python3 install
fi
