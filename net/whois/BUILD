(

  sedit  "s:/usr/local:/usr:g" Makefile            &&
  sedit  "s:OPTS=-O2:OPTS=\$(CFLAGS):g" Makefile   &&
  sedit  "s:\$(prefix)/man/man1:\$(prefix)/share/man/man1/:g" Makefile &&

  make             &&
  prepare_install  &&
  make    install       

) > $C_FIFO 2>&1
