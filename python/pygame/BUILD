if in_depends $MODULE Sphinx; then
  python ./makeref.py
fi &&

python setup.py build &&

prepare_install &&

python setup.py install --root=/
