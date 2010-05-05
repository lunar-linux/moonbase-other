(

  # Convert line-endings from Windows to Unix format
  sedit 's/\r//' README &&

  python setup.py build &&
  prepare_install &&
  python setup.py install

) > $C_FIFO 2>&1
