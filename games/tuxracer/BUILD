(

  ./configure  --prefix=/usr                                    \
               --bindir=/usr/games                              \
               --disable-sdltest                                \
	       --with-tcl-lib-name=tcl8.4                       \
               --with-data-dir=/usr/share/$MODULE-data-$VERSION &&
  sedit "s:-malign-:-falign-:g" Makefile src/Makefile           &&
  default_make                                                  &&
  chmod  -R a+r  $MODULE-data-$VERSION                          &&
  cp     -r      $MODULE-data-$VERSION  /usr/share

) > $C_FIFO 2>&1
