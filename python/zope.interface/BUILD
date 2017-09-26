python setup.py config &&
prepare_install &&
python setup.py install --install-scripts=zope --root=/ &&

if in_depends $MODULE Python-3; then
  devoke_installwatch &&
  python3 setup.py config &&
  prepare_install &&
  python3 setup.py install --install-scripts=zope --root=/
fi
