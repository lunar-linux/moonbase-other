prepare_install &&

python2 setup.py install --root=/ &&

if in_depends $MODULE Python-3 ; then
  python3 setup.py install --root=/
fi
