(

  ./configure  --build=$BUILD  \
               --prefix=/usr  &&
  sedit "s/)\/doc\/slang/)\/share\/doc\/slang/" src/Makefile  &&
  make  elf          &&
  prepare_install    &&
  make  install-elf  &&
  make  install-links

) > $C_FIFO 2>&1
