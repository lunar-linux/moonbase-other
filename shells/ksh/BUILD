(

  sedit "s:-liconv::g" src/lib/libast/Makefile src/lib/libast/features/iconv &&
  ./bin/package make ksh CCFLAGS=$CFLAGS	&&
  strip arch/linux.i386/bin/ksh			&&
  prepare_install				&&
  install -m755 arch/linux.i386/bin/ksh /bin/   &&
  install -m644 src/cmd/ksh93/sh.1 /usr/share/man/man1/ksh.1

) > $C_FIFO 2>&1

