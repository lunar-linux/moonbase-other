python3 setup.py config &&

prepare_install &&

python3 setup.py install --root=/ &&

if module_installed Python; then
  python2 setup.py config &&
  python2 setup.py install --root=/
fi
