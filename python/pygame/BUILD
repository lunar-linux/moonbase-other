if in_depends $MODULE Sphinx; then
  python2 ./makeref.py
fi &&

python2 setup.py build &&

prepare_install &&

python2 setup.py install --root=/
