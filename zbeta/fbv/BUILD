(

  # fixes gif support
  sedit 's/-lungif/-lgif/g' configure Makefile

  # configure barfs on --build stuff
  ./configure --prefix=$MODULE_PREFIX             \
              --infodir=$MODULE_PREFIX/share/info \
              --mandir=$MODULE_PREFIX/share/man   \
              $OPTS

  default_make

) > $C_FIFO 2>&1
