export PYTHONDONTWRITEBYTECODE=1 &&

make &&
python setup.py build &&

prepare_install &&
make install &&
python setup.py install --optimize=1 --skip-build --root=/ &&

rm /usr/lib/libminiupnpc.a
