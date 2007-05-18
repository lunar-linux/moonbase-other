(

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  python setup.py build  &&
  prepare_install        &&
  python setup.py install
        
) > $C_FIFO 2>&1
