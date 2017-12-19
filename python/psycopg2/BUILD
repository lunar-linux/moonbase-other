python3 setup.py build &&

prepare_install &&

python3 setup.py install --root=/ &&

# Do the Python2 part if installed
if in_depends setuptools; then
  python setup.py build &&
  prepare_install &&
  python setup.py install --root=/
fi
