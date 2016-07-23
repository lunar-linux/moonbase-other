unset LDFLAGS &&

python setup.py build &&
prepare_install &&
python setup.py install --root=/ &&

# Do the Python 3 part if installed
if in_depends $MODULE Python-3; then
  python3 setup.py build &&
  prepare_install &&
  python3 setup.py install --root=/
fi
