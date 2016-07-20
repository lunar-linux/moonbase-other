python ./setup.py build &&
prepare_install &&
python setup.py install --root=/ &&

if in_depends $MODULE Python-3 ; then
  /usr/bin/python3 ./setup.py build &&
  prepare_install &&
  /usr/bin/python3 setup.py install --root=/
fi
