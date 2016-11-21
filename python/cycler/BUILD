python ./setup.py build &&

prepare_install &&

# Specifying root, to stop packages clobbering each other's easy-install.pth
# http://mail.python.org/pipermail/distutils-sig/2008-October/010208.html
python ./setup.py install --root=/ &&

if module_installed Python-3; then
  python3 ./setup.py build &&
  python3 ./setup.py install --root=/
fi
