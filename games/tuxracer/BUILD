(

  ./configure  --prefix=/usr                                    \
               --bindir=/usr/games                              \
               --disable-sdltest                                \
               --with-data-dir=/usr/share/$MODULE-data-$VERSION  &&
  make                                                          &&
  prepare_install                                               &&
  make    install                                               &&
  chmod  -R a+r  $MODULE-data-$VERSION                           &&
  cp     -r      $MODULE-data-$VERSION  /usr/share

) > $C_FIFO 2>&1
