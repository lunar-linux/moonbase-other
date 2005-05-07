(

  prepare_install                                                  &&
  
  install -D -m 0755 calamaris $MODULE_PREFIX/bin/calamaris        &&
  install -D calamaris.1 $MODULE_PREFIX/share/man/man1/calamaris.1 &&
  
  gather_docs EXAMPLES

) > $C_FIFO 2>&1
