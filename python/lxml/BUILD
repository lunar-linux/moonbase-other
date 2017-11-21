python3 setup.py build &&

prepare_install &&

python3 setup.py install --skip-build --optimize=1 --root=/ &&

if in_depends $MODULE Python; then
  python setup.py build &&
  python setup.py install --skip-build --optimize=1 --root=/
fi
