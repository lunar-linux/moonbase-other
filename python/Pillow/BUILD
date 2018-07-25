python3 setup.py config &&

prepare_install &&

python3 setup.py install --root=/ &&

if module_installed setuptools; then
  python2 setup.py config &&
  python2 setup.py install --root=/
fi
