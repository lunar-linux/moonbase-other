(
  patch_it $SOURCE_CACHE/$SOURCE2 0           &&
  export CC="gcc"                             &&
  export CCC="g++"                            &&
  export CXX="g++"                            &&
  export CFLAGS="-O2 -Wall -g"                &&
  ./configure --without-gtk                   \
              --prefix=/usr                   \
              --infodir=/usr/share/info       \
              --mandir=/usr/share/man         \
              $OPTS                           &&
  default_make

) > $C_FIFO 2>&1
