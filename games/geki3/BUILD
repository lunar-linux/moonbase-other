(

  lrm geki3 > /dev/null &&

  sedit "s:prefix)/share:prefix)/share/games:" bmp/Makefile.am   &&
  sedit "s:prefix)/share:prefix)/share/games:" data/Makefile.am  &&
  sedit "s:prefix)/share:prefix)/share/games:" data/Makefile.in  &&
  sedit "s:prefix)/share:prefix)/share/games:" wav/Makefile.am   &&
  sedit "s:prefix/share:prefix/share/games:"   configure.in      &&
  
  aclocal  &&
  autoconf &&
  touch -r ./configure ./configure.in &&
  
  ./configure  --prefix=/usr              \
               --bindir=/usr/games        \
	       --datadir=/usr/share/games &&

  sedit "s:= $(SHELL) $(top_srcdir)/depcomp:=:" src/Makefile.in  &&

  mkdir -p /usr/share/games/geki3      &&
  mkdir -p /usr/share/games/geki3/bmp  &&
  mkdir -p /usr/share/games/geki3/data &&
  mkdir -p /usr/share/games/geki3/wav  &&
  cp data/*.dat /usr/share/games/geki3/data &&
  
  default_make

) > $C_FIFO 2>&1
