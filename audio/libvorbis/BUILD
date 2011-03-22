(

  OPTS+=" --disable-static" &&

  # Fix docdir
  sedit "/^docdir =/s/.*/docdir = \/usr\/share\/doc\/$MODULE/" doc/Makefile.in  &&
  sedit "s:/doc/\$(PACKAGE)-\$(VERSION):/doc/\$(PACKAGE):" doc/vorbisenc/Makefile.in  &&
  sedit "s:/doc/\$(PACKAGE)-\$(VERSION):/doc/\$(PACKAGE):" doc/vorbisfile/Makefile.in  &&

  default_build

) > $C_FIFO 2>&1
