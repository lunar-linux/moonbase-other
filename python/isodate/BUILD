python3 setup.py build &&

prepare_install &&

python3 setup.py install --root=/ &&

# Do the Python2 part if installed
if module_installed python2-setuptools; then
  python2 setup.py build &&
  python2 setup.py install --root=/
fi
