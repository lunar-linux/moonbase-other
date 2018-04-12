python2 setup.py config &&
prepare_install &&
python2 setup.py install --root=/ &&

if in_depends $MODULE Python-3; then
  devoke_installwatch &&
  python3 setup.py config &&
  prepare_install &&
  python3 setup.py install --root=/
fi
