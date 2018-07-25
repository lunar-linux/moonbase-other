prepare_install &&

mkdir python2 &&
pushd python2 &&
PYTHON=/usr/bin/python2 ../configure --prefix=/usr PYTHON_VERSION=2 &&
make &&
make python2 install
popd

mkdir python3 &&
pushd python3 &&
PYTHON=/usr/bin/python3 ../configure --prefix=/usr &&
make &&
make python3 install &&
popd
