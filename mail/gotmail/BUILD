(

  prepare_install  &&
  make             &&
  install -D -m0755 gotmail $MODULE_PREFIX/bin/gotmail  &&
  install -D gotmail.1.gz $MODULE_PREFIX/share/man/man1/gotmail.1.gz  &&
  gather_docs sample.gotmailrc
  
) > $C_FIFO 2>&1
