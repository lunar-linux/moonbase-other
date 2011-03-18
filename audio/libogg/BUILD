(

  OPTS+=" --disable-static" &&

  # Fix docdir
  sedit "s:/doc/\$(PACKAGE)-\$(VERSION):/doc/\$(PACKAGE):" doc/Makefile.in  &&
  sedit "s:/doc/\$(PACKAGE)-\$(VERSION):/doc/\$(PACKAGE):" doc/libogg/Makefile.in  &&

  default_build

) > $C_FIFO 2>&1
