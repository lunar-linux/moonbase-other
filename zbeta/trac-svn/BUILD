(

  python setup.py build &&
  prepare_install &&
  python setup.py install --root=/ &&

  install -m 755 cgi-bin/trac.* /usr/bin

) > $C_FIFO 2>&1
