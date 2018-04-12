python3 setup.py build &&

prepare_install &&

python3 setup.py install --optimize=1 &&

# Now for Python2
if module_installed setuptools; then
  python2 setup.py build &&
  python2 setup.py install --optimize=1
fi
