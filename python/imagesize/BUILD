python3 setup.py build &&

prepare_install &&

python3 setup.py install --root=/ &&

if module_install setuptools; then
  python2 setup.py build &&
  python2 setup.py install --root=/
fi
