(

  sedit "s:data_files = data_files:# :g"  setup.py  &&

  python setup.py build  &&
  prepare_install        &&
  python setup.py install --root=/

) > $C_FIFO 2>&1
