python setup.py build &&

prepare_install &&

# Specifying root, to stop packages clobbering each other's easy-install.pth
# http://mail.python.org/pipermail/distutils-sig/2008-October/010208.html
python setup.py install --root=/

if in_depends $MODULE Python-3; then
#  sed -i -e "s|^#\!.*/usr/bin/python|#!/usr/bin/python3|" setuptools/tests/test_resources.py &&
  sed -i -e "s|^#\!.*/usr/bin/env python|#!/usr/bin/env python3|" setuptools/command/easy_install.py &&
  python3 setup.py build &&
  prepare_install &&
  python3 setup.py install --root=/
fi
