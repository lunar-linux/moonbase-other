python3 setup.py build &&
prepare_install &&
python3 setup.py install --root=/

if in_depends $MODULE python2 ; then
  python2 setup.py build &&
  prepare_install &&
  python2 setup.py install --root=/
fi
