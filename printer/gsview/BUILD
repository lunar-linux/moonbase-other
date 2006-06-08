(
#evil hack to make gsview work with espgs:
  sedit "s/rv.revision/rv.revision\ \/\ 100/g" src/cdll.c

  cp  srcunx/unx.mak Makefile    &&
  sedit "s,GSVIEW_ROOT=/usr/local,GSVIEW_ROOT=/usr," Makefile       &&
  sedit "s,\$(GSVIEW_BASE)/man,\$(GSVIEW_BASE)/share/man," Makefile &&
  sedit "s/-O/$CFLAGS/" Makefile &&

  default_make			 &&

  strip /usr/bin/gsview

) > $C_FIFO 2>&1
