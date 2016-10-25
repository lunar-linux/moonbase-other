# Do Python2 build
python ./setup.py build &&
prepare_install &&
python setup.py install --root=/ --optimize=1

# Do Python3 build
if in_depends $MODULE Python-3; then
  python3 ./setup.py build &&
  prepare_install &&
  python3 setup.py install --root=/ --optimize=1
fi
