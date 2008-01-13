(

  if ! module_installed NVIDIA || ! module_installed NVIDIA-beta || ! module_installed NVIDIA-legacy || ! module_installed NVIDIA-old; then
  sedit "s:glXGetProcAddressARB:glXGetProcAddress:g" configure
  fi &&

  patch_it $SOURCE3 1 &&

  mkdir -p /usr/share/games/$MODULE-data-$VERSION &&

  ./configure --prefix=/usr                                           \
              --with-tcl-lib-name=tcl`lvu version tcl | cut -d. -f1,2` \
              --with-data-dir=/usr/share/games/$MODULE-data-$VERSION &&

  sedit "s:-malign-:-falign-:g" Makefile src/Makefile &&

  default_make                                        &&
  chmod -R a+r $MODULE-data-$VERSION                  &&
  cp -r $MODULE-data-$VERSION /usr/share/games

) > $C_FIFO 2>&1
