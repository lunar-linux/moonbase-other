(

  sedit 's:PREFIX = /usr/local:PREFIX = /usr:' Makefile
  sedit 's/man\/man1/share\/man\/man1/g' Makefile
  make              &&
  prepare_install   &&
  make install

) > $C_FIFO 2>&1
