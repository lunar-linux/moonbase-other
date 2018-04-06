python3 setup.py build &&
prepare_install &&
python3 setup.py install --root=/

if in_depends $MODULE setuptools ; then
  python setup.py build &&
  prepare_install &&
  python setup.py install --root=/
fi
