(

  patch_it $SOURCE_CACHE/$SOURCE2 0           &&
  patch_it $SOURCE_CACHE/$SOURCE3 1           &&
  patch_it $SOURCE_CACHE/$SOURCE4 1           &&
  export CC="gcc"                             &&
  export CCC="g++"                            &&
  export CXX="g++"                            &&
  export CFLAGS="-O2 -Wall -g"                &&
  ./configure --without-gtk                   \
              --prefix=/usr                   \
              --infodir=/usr/share/info       \
              --mandir=/usr/share/man         \
              $OPTS                           &&
  default_make                                &&
  install -m755 $SCRIPT_DIRECTORY/bitchx /usr/bin/bitchx

) > $C_FIFO 2>&1
