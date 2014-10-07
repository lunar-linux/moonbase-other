
  patch_it $SOURCE2 1 &&
  patch_it $SOURCE3 1 &&
  patch_it $SOURCE4 0 &&

  sedit "s:\$(LIBS) \$(IMGLDFLAGS):\$(LIBS) -lX11 \$(IMGLDFLAGS):" Makefile.in &&
  sedit "s:termcap ncurses:termcap tinfo ncurses:g" acinclude.m4 &&

  patch_it $SOURCE5 0 &&

  OPTS+=" --with-browser=/usr/bin/xdg-open --with-termlib=yes" &&

  autoconf &&
  default_build
