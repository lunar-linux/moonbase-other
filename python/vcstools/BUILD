python3 setup.py build &&

prepare_install &&

python3 setup.py install --optimize=1 &&

if module_install setuptools; then
  python2 setup.py build &&
  python2 setup.py install --optimize=1
fi
