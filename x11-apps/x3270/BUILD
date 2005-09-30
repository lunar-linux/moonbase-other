(

  default_config           &&

  sedit  's:x3270 $(DESTDIR)$(BINDIR):x3270 /usr/bin:'  Makefile       &&
  sedit  's:$(DESTDIR)$(MANDIR)/x3270.$(MANSUFFIX):/usr/share/man/man1/x3270.$(MANSUFFIX):' Makefile       &&

  make  depend             &&
  default_make             &&
  make  install.man

) > $C_FIFO 2>&1
