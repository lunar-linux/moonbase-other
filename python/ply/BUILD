# Do Python3 build
python3 ./setup.py build &&

prepare_install &&

python3 setup.py install --root=/

# Do Python2 build
if module_installed setuptools; then
  python ./setup.py build &&
  python setup.py install --root=/
fi
