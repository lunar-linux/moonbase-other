(

  python ./setup.py build &&
  cd libanki &&
  python ./setup.py build &&

  prepare_install &&

  # Specifying root, to stop packages clobbering each other's easy-install.pth
  # http://mail.python.org/pipermail/distutils-sig/2008-October/010208.html
  python ./setup.py install --root=/ &&

  cd .. &&
  python ./setup.py install --root=/ &&

  install -Dm0644 anki.desktop /usr/share/applications/anki.desktop &&
  install -Dm0644 icons/anki.png /usr/share/pixmaps/anki.png

) > $C_FIFO 2>&1
