prepare_install &&

python3 setup.py install --root=/ --optimize=1

if in_depends $MODULE Python ; then
  python setup.py install --root=/ --optimize=1
fi

