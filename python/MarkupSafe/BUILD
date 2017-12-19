# This part does Python-3
python3 setup.py build &&

prepare_install &&

python3 setup.py install --optimize=1 --root=/

# Now do Python2 part, they can live together
if module_installed Python; then
  python setup.py build &&
  python setup.py install --optimize=1 --root=/
fi
