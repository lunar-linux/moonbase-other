(

  python setup.py build &&
  prepare_install &&
  python setup.py install &&

  install -m 755 cgi-bin/trac.* /usr/bin

) > $C_FIFO 2>&1
