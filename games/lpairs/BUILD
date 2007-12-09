(

  ./configure --prefix=/usr                                \
              --bindir=/usr/games                          \
              --datadir=/usr/share/games                   \
              --localstatedir=/usr/share/games/lbreakout2  \
              --with-doc-path=/usr/share/doc/lbreakout2    \
              $OPTS                                       &&
              
  sedit "s:automake-1.9:automake:" Makefile  &&
  sedit "s:aclocal-1.9:aclocal:"   Makefile  &&

  default_make
  
) > $C_FIFO 2>&1
