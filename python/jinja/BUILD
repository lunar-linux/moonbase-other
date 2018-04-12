# Do the python3 part first
python3 setup.py build &&

prepare_install &&

python3 setup.py install --optimize=1 --root=/ &&

# Can live side by side with the Python2 stuff
if module_installed setuptools; then
  python2 setup.py build &&
  python2 setup.py install --optimize=1 --root=/
fi
