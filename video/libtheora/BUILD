(

  # This is temp and should be looked at on the next bump
  cp $SOURCE_CACHE/$SOURCE2 $SOURCE_DIRECTORY/doc/spec  &&

  # Fix docdir
  sedit "s:/doc/\$(PACKAGE)-\$(VERSION):/doc/\$(PACKAGE):" doc/Makefile.in  &&
  sedit "s:/doc/\$(PACKAGE)-\$(VERSION):/doc/\$(PACKAGE):" doc/spec/Makefile.in  &&

  default_build

) > $C_FIFO 2>&1
