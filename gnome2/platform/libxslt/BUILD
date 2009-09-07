(

  # Fix docdir
  sedit "s:libxslt-\$(VERSION):libxslt:" doc/Makefile.in  &&
  sedit "s:/doc/libxslt-python-\$(LIBXSLT_VERSION):/doc/libxslt-python:" python/Makefile.in  &&
  sedit "s:/doc/libxslt-python-\$(LIBXSLT_VERSION):/doc/libxslt-python:" python/tests/Makefile.in  &&

  default_build

) > $C_FIFO 2>&1
