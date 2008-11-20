(

  if [ "`arch`" == "x86_64" ]; then
    make nasm64
  else
    make
  fi                               &&
  prepare_install                  &&
  make  BINDIR=/usr/bin             \
        MANDIR=/usr/share/man/man1  \
        PREFIX=/                    \
        install

) > $C_FIFO 2>&1
