(

  # this sedit is needed by Python as this file has utf-8 chars in it
  sedit "1a\# vim: set fileencoding=utf-8 :" lib/albumart/albumart_images.py &&
  prepare_install &&
  python setup.py install

) > $C_FIFO 2>&1
