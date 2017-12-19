python3 setup.py build &&

prepare_install &&

python3 setup.py install --root=/ &&

# If installed do the Python2 install
if in_depends setuptools; then
  python setup.py build &&
  python setup.py install --root=/
fi
