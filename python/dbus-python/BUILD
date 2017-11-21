prepare_install &&

mkdir python2 &&
pushd python2 &&
PYTHON=/usr/bin/python ../configure --prefix=/usr &&
make &&
make -C python2 install
popd &&

mkdir python3 &&
pushd python3 &&
PYTHON=/usr/bin/python3 ../configure --prefix=/usr &&
make &&
make -C python3 install &&
popd 
