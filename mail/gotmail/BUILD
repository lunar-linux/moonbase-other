(

  prepare_install &&
  install -D -m0755 gotmail $MODULE_PREFIX/bin/gotmail         &&
  install -D gotmail.1 $MODULE_PREFIX/share/man/man1/gotmail.1 &&
  gather_docs sample.gotmailrc
  
) > $C_FIFO 2>&1
