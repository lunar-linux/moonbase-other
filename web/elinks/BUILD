(
# NOTE guile support is incomplete in elinks.  Enable it at your own risk!
  mkdir -p elinks-build &&
  cd elinks-build &&
  ../configure --prefix=/usr            \
              --infodir=/usr/share/info \
              --mandir=/usr/share/man	\
              --without-guile           \
              $OPTS

  default_make

) > $C_FIFO 2>&1
