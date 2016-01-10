# Python2 here
prepare_install &&
python setup.py install &&

#Python-3 here
if in_depends $MODULE Python-3; then
  prepare_install &&
  python3 setup.py install
fi
