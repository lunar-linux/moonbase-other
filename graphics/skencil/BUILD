(

  patch_it $SOURCE_CACHE/$SOURCE2 0 &&
  ./setup.py configure    &&
  ./setup.py build        &&
  prepare_install		    &&
  ./setup.py install --prefix=/usr    

) > $C_FIFO 2>&1
