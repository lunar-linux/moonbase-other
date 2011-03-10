(

  # Based on http://www.archlinux.org/packages/community/any/anki/
  # and http://koji.fedoraproject.org/koji/packageinfo?packageID=7847
  cd libanki &&
  python setup.py build &&
  cd .. &&
  python setup.py build &&

  prepare_install &&

  cd libanki &&
  # Specifying root, to stop packages clobbering each other's easy-install.pth
  # http://mail.python.org/pipermail/distutils-sig/2008-October/010208.html
  python setup.py install -O1 --skip-build --root=/ &&
  cd .. &&
  python setup.py install -O1 --skip-build --root=/ &&

  install -D -m644 $MODULE.desktop /usr/share/applications/$MODULE.desktop &&
  install -D -m644 icons/$MODULE.png /usr/share/pixmaps/$MODULE.png

) > $C_FIFO 2>&1
