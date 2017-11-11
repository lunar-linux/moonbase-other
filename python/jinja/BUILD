# Do the python2 part first
python setup.py build &&
prepare_install &&
python setup.py install --optimize=1 --root=/ &&

# Can live side by side with the Python2 stuff
if in_depends $MODULE Python-3; then
  python3 setup.py build &&
  prepare_install &&
  python3 setup.py install --optimize=1 --root=/
fi
