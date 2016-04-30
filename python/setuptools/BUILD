python setup.py build &&

prepare_install &&

# Specifying root, to stop packages clobbering each other's easy-install.pth
# http://mail.python.org/pipermail/distutils-sig/2008-October/010208.html
python setup.py install --optimize=1

if module_installed Python-3; then
  python3 setup.py install --optimize=1
fi
