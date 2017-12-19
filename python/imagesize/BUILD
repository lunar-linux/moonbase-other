python3 setup.py build &&

prepare_install &&

python3 setup.py install --root=/ &&

if module_install $MODULE Python; then
  python setup.py build &&
  python setup.py install --root=/
fi
