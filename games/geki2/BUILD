(
  
  sedit "s:prefix)/share:prefix)/share/games:" bmp/Makefile.am   &&
  sedit "s:prefix)/share:prefix)/share/games:" data/Makefile.am  &&
  sedit "s:prefix)/share:prefix)/share/games:" data/Makefile.in  &&
  sedit "s:prefix)/share:prefix)/share/games:" wav/Makefile.am   &&
  sedit "s:prefix/share:prefix/share/games:"   configure.in      &&
  
  aclocal &&
  touch -r ./configure ./configure.in &&
  
  ./configure  --prefix=/usr              \
               --bindir=/usr/games        \
	       --datadir=/usr/share/games &&

  default_make

) > $C_FIFO 2>&1
