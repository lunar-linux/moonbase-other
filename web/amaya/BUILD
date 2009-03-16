(

  OPTS="$OPTS --enable-motif --enable-system-raptor       \
              --enable-system-libwww --with-graphic-libs"

  cd     Amaya                 &&
  mkdir  LINUX-ELF             &&
  cd     LINUX-ELF             &&

  ../configure  --prefix=$MODULE_PREFIX   \
                         $OPTS           &&

  default_make

) > $C_FIFO 2>&1
