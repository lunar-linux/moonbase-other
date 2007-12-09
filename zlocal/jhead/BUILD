(

  make &&
  prepare_install &&
  install -m755 $SOURCE_DIRECTORY/jhead /usr/bin/ &&

  mkdir -p /usr/share/man/man1/ &&
  install -m644 $SOURCE_DIRECTORY/jhead.1.gz /usr/share/man/man1/ &&
  gather_docs readme.txt usage.html changes.txt

) > $C_FIFO 2>&1
