(

  sedit "s:glXGetProcAddressARB:glXGetProcAddress:g" configure

  patch_it $SOURCE3 1 &&

  mkdir -p /usr/share/games/$MODULE-data-$VERSION &&

  ./configure --prefix=/usr                                           \
              --with-tcl-lib-name=tcl8.4                              \
              --with-data-dir=/usr/share/games/$MODULE-data-$VERSION &&

  sedit "s:-malign-:-falign-:g" Makefile src/Makefile &&

  default_make                                        &&
  chmod -R a+r $MODULE-data-$VERSION                  &&
  cp -r $MODULE-data-$VERSION /usr/share/games

) > $C_FIFO 2>&1
