(

  ./configure --prefix=$MODULE_PREFIX             \
              --infodir=$MODULE_PREFIX/share/info \
              --mandir=$MODULE_PREFIX/share/man   \
              --without-libungif                  \
              $OPTS

  default_make

) > $C_FIFO 2>&1
