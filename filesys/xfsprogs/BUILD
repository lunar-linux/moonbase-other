(

  export OPTIMIZER=-O1
  export DEBUG=-DNDEBUG

  ./configure  --prefix=/usr           \
               --with-root-prefix=     \
               --mandir=/usr/share/man \
               --enable-elf-shlibs     &&
  make                                 &&
  prepare_install                      &&
  make    install                      &&
  make    install-dev

) > $C_FIFO 2>&1
