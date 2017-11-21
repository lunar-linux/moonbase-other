python3 setup.py build &&
prepare_install &&
python3 setup.py install --root=/ &&

# Do the Python 2.x part if installed
if in_depends $MODULE Python; then
  python setup.py build &&
  prepare_install &&
  python setup.py install --root=/
fi
