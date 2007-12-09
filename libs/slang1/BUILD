(

  ./configure  --build=$BUILD  \
               --prefix=/opt/lunar/slang  &&
  sedit "s/)\/doc\/slang/)\/share\/doc\/slang/" src/Makefile &&
  make  elf                    &&
  prepare_install              &&
  make    install-elf          &&
  make    install-links

) > $C_FIFO 2>&1
