python3 setup.py build &&

prepare_install &&

python3 setup.py install --skip-build --optimize=1 --root=/ &&

if module_installed Python; then
  python setup.py build &&
  python setup.py install --skip-build --optimize=1 --root=/
fi
