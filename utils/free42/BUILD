(
  
  bad_flags ALL &&
  cd gtk &&
  make &&
  make clean &&
  make -e BCD_MATH=1 &&
  prepare_install &&
  install -m 755 -s free42dec free42bin skin2cc keymap2cc /usr/bin &&
  mkdir -p $DOCUMENT_DIRECTORY/free42 &&
  install -m 644 README $DOCUMENT_DIRECTORY/free42/README_gtk &&
  cd .. &&
  gather_docs HISTORY

) >$C_FIFO 2>&1
