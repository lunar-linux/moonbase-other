(

  cp  srcunx/unx.mak Makefile    &&
  sedit "s,GSVIEW_ROOT=/usr/local,GSVIEW_ROOT=/usr," Makefile       &&
  sedit "s,\$(GSVIEW_BASE)/man,\$(GSVIEW_BASE)/share/man," Makefile &&
  sedit "s/-O/$CFLAGS/" Makefile &&
  make                           &&
  prepare_install                &&
  make    install                &&
  strip /usr/bin/gsview          &&
  strip /usr/bin/epstool

) > $C_FIFO 2>&1
