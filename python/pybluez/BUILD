python3 setup.py build &&

prepare_install &&

python3 setup.py install --optimize=1

if in_depends $MODULE Python; then
  python setup.py build &&
  python setup.py install --optimize=1
fi
