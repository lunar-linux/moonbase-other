(

  python setup.py build &&
  prepare_install &&
  mkdir -p /usr/share/man/man1 &&
  install -m644 scons.1 /usr/share/man/man1/ &&
  python setup.py install --root=/

) > $C_FIFO 2>&1
