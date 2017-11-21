# Do the python3 install first
mkdir python2 &&
pushd python2 &&
PYTHON=/usr/bin/python3 ../configure --prefix=/usr &&

prepare_install &&

make &&
popd &&
make -C python3 install

# Now the python2 stuff
if in_depends $MODULE Python; then
  mkdir python2 &&
  pushd python2 &&
  PYTHON=/usr/bin/python ../configure --prefix=/usr &&
  make &&
  popd &&
  make -C python2 install
fi
