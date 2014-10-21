
# This part does Python2
  python setup.py build  &&
  prepare_install          &&
  python setup.py install --optimize=1 --root=/ &&

# Now do Python-3 part, they can live together
  if in_depends $MODULE Python-3 ; then
   python3 setup.py build &&
   python3 setup.py install --optimize=1 --root=/
  fi
