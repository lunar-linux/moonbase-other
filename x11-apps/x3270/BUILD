(

  ./configure  --prefix=/usr              \
               --mandir=/usr/share/man    \
               $OPTS                      &&

  sedit  's:x3270 $(DESTDIR)$(BINDIR):x3270 /usr/bin:'  Makefile       &&
  sedit  's:$(DESTDIR)$(DOCHTMLDIR)/x3270.$$SUF.html:/usr/share/doc/x3270/x3270.$$SUF.html:' Makefile      &&
  sedit  's:$(DESTDIR)$(MANDIR)/x3270.$(MANSUFFIX):/usr/share/man/man1/x3270.$(MANSUFFIX):' Makefile       &&

  make  depend              &&
  make                      &&

  prepare_install                &&
  mkdir -p /usr/share/doc/x3270  &&
  make  install                  &&
  make  install.man

) > $C_FIFO 2>&1
